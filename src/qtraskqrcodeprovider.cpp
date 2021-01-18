#include "qtraskqrcodeprovider.h"
#include "qtraskencoder.h"

#include <QUrlQuery>
#include <QRegularExpression>
#include <QDebug>

QtRaskQRCodeProvider::QtRaskQRCodeProvider():
    QQuickImageProvider(QQuickImageProvider::Image)
{}

QImage QtRaskQRCodeProvider::requestImage(const QString &id, QSize */*size*/, const QSize &requestedSize)
{
    QtRaskEncoderConfig config;
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
                config.setErrorCorrectionLevel(QtRaskEncoder::ErrorCorrectionLevel::L);
            else if (correctionLevel == QStringLiteral("M"))
                config.setErrorCorrectionLevel(QtRaskEncoder::ErrorCorrectionLevel::M);
            else if (correctionLevel == QStringLiteral("Q"))
                config.setErrorCorrectionLevel(QtRaskEncoder::ErrorCorrectionLevel::Q);
            else if (correctionLevel == QStringLiteral("H"))
                config.setErrorCorrectionLevel(QtRaskEncoder::ErrorCorrectionLevel::H);
        }

        if (optQuery.hasQueryItem(tagBorder))
            config.setBorder(optQuery.queryItemValue(tagBorder) == QStringLiteral("true"));

        if (optQuery.hasQueryItem(tagTransparent))
            config.setTransparent(optQuery.queryItemValue(tagTransparent) == QStringLiteral("true"));

        data = id.left(settingsIndex);
    }

    return QtRaskEncoder::encodeData(data, config);
}
