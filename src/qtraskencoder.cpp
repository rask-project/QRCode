#include "qtraskencoder.h"

#include <zxing/qrcode/encoder/QRCode.h>
#include <zxing/qrcode/encoder/Encoder.h>
#include <vector>

QImage QtRaskEncoder::encodeData(const QString &data, QtRaskEncoderConfig config)
{
    QImage image;

    zxing::Ref<zxing::qrcode::QRCode> barcode = zxing::qrcode::Encoder::encode(data.toStdWString(),
                                                                               config.getCorrectionLevel());

    zxing::Ref<zxing::qrcode::ByteMatrix> bytesRef = barcode->getMatrix();
    const std::vector<std::vector<zxing::byte>>& bytes = bytesRef->getArray();
    const int width = int(bytesRef->getWidth() + (config.getBorder() ? 2 : 0));
    const int height = int(bytesRef->getHeight() + (config.getBorder() ? 2 : 0));
    const QRgb black = qRgba(0, 0, 0, config.getTransparent() ? 0 : 255);
    const QRgb white = qRgba(255, 255, 255, 255);

    image = QImage(width, height, QImage::Format_ARGB32);
    image.fill(white);

    size_t offset = config.getBorder() ? 1 : 0;
    for (size_t i = 0; i < bytesRef->getWidth(); ++i) {
        for (size_t j = 0; j < bytesRef->getHeight(); ++j) {
            if (bytes[j][i] != 0U) {
                image.setPixel(int(offset + i), int(offset + j), black);
            }
        }
    }

    image = image.scaled(config.getImageSize());
    return image;
}

QtRaskEncoderConfig::QtRaskEncoderConfig():
    m_imageSize(),
    m_border(false),
    m_transparent(false),
    m_errorCorrectionLevel(QtRaskEncoder::ErrorCorrectionLevel::M),
    m_correctionLevel(zxing::qrcode::ErrorCorrectionLevel::M)
{}

bool QtRaskEncoderConfig::getBorder() const
{
    return m_border;
}

void QtRaskEncoderConfig::setBorder(bool border)
{
    m_border = border;
}

bool QtRaskEncoderConfig::getTransparent() const
{
    return m_transparent;
}

void QtRaskEncoderConfig::setTransparent(bool transparent)
{
    m_transparent = transparent;
}

QtRaskEncoder::ErrorCorrectionLevel QtRaskEncoderConfig::getErrorCorrectionLevel() const
{
    return m_errorCorrectionLevel;
}

void QtRaskEncoderConfig::setErrorCorrectionLevel(QtRaskEncoder::ErrorCorrectionLevel errorCorrectionLevel)
{
    m_errorCorrectionLevel = errorCorrectionLevel;
}

QSize QtRaskEncoderConfig::getImageSize() const
{
    return m_imageSize;
}

void QtRaskEncoderConfig::setImageSize(QSize imageSize)
{
    m_imageSize = imageSize;
}

zxing::qrcode::ErrorCorrectionLevel &QtRaskEncoderConfig::getCorrectionLevel()
{
    switch (m_errorCorrectionLevel) {
    case QtRaskEncoder::L: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::L; break;
    case QtRaskEncoder::M: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::M; break;
    case QtRaskEncoder::Q: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::Q; break;
    case QtRaskEncoder::H: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::H; break;
    }
    return m_correctionLevel;
}
