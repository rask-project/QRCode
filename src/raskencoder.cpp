#include "raskencoder.h"

#include <zxing/qrcode/encoder/QRCode.h>
#include <zxing/qrcode/encoder/Encoder.h>
#include <vector>

QImage RaskEncoder::encodeData(const QString &data, RaskEncoderConfig config)
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

RaskEncoderConfig::RaskEncoderConfig():
    m_imageSize(),
    m_border(false),
    m_transparent(false),
    m_errorCorrectionLevel(RaskEncoder::ErrorCorrectionLevel::M),
    m_correctionLevel(zxing::qrcode::ErrorCorrectionLevel::M)
{}

bool RaskEncoderConfig::getBorder() const
{
    return m_border;
}

void RaskEncoderConfig::setBorder(bool border)
{
    m_border = border;
}

bool RaskEncoderConfig::getTransparent() const
{
    return m_transparent;
}

void RaskEncoderConfig::setTransparent(bool transparent)
{
    m_transparent = transparent;
}

RaskEncoder::ErrorCorrectionLevel RaskEncoderConfig::getErrorCorrectionLevel() const
{
    return m_errorCorrectionLevel;
}

void RaskEncoderConfig::setErrorCorrectionLevel(RaskEncoder::ErrorCorrectionLevel errorCorrectionLevel)
{
    m_errorCorrectionLevel = errorCorrectionLevel;
}

QSize RaskEncoderConfig::getImageSize() const
{
    return m_imageSize;
}

void RaskEncoderConfig::setImageSize(QSize imageSize)
{
    m_imageSize = imageSize;
}

zxing::qrcode::ErrorCorrectionLevel &RaskEncoderConfig::getCorrectionLevel()
{
    switch (m_errorCorrectionLevel) {
    case RaskEncoder::L: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::L; break;
    case RaskEncoder::M: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::M; break;
    case RaskEncoder::Q: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::Q; break;
    case RaskEncoder::H: m_correctionLevel = zxing::qrcode::ErrorCorrectionLevel::H; break;
    }
    return m_correctionLevel;
}
