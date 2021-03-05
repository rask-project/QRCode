#include "raskqrcodeprovider.h"
#include "raskencoder.h"

#include <QUrlQuery>
#include <QRegularExpression>
#include <QDebug>

RaskQRCodeProvider::RaskQRCodeProvider():
    QQuickImageProvider(QQuickImageProvider::Image)
{}

QImage RaskQRCodeProvider::requestImage(const QString &id, QSize */*size*/, const QSize &requestedSize)
{
    RaskEncoderConfig config;
    config.setImageSize(requestedSize);
    config.setBorder(true);

    QString data = id;

    int settingsIndex = id.lastIndexOf(QRegularExpression(QStringLiteral("\\?(correctionLevel|format|border|transparent)=")));
    if (settingsIndex >= 0) {
        QUrlQuery optQuery(QStringLiteral("options?dummy=&%1").arg(id.mid(settingsIndex + 1)));

        const QString tagCorrectionLevel = QStringLiteral("correctionLevel");
        const QString tagBorder = QStringLiteral("border");
        const QString tagTransparent = QStringLiteral("transparent");

        if (optQuery.hasQueryItem(tagCorrectionLevel)) {
            const QString correctionLevel = optQuery.queryItemValue(tagCorrectionLevel);
            if (correctionLevel == QStringLiteral("L"))
                config.setErrorCorrectionLevel(RaskEncoder::ErrorCorrectionLevel::L);
            else if (correctionLevel == QStringLiteral("M"))
                config.setErrorCorrectionLevel(RaskEncoder::ErrorCorrectionLevel::M);
            else if (correctionLevel == QStringLiteral("Q"))
                config.setErrorCorrectionLevel(RaskEncoder::ErrorCorrectionLevel::Q);
            else if (correctionLevel == QStringLiteral("H"))
                config.setErrorCorrectionLevel(RaskEncoder::ErrorCorrectionLevel::H);
        }

        if (optQuery.hasQueryItem(tagBorder))
            config.setBorder(optQuery.queryItemValue(tagBorder) == QStringLiteral("true"));

        if (optQuery.hasQueryItem(tagTransparent))
            config.setTransparent(optQuery.queryItemValue(tagTransparent) == QStringLiteral("true"));

        data = id.left(settingsIndex);
    }

    return RaskEncoder::encodeData(data, config);
}
