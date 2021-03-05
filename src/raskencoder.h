#pragma once

#include <QImage>
#include <zxing/qrcode/ErrorCorrectionLevel.h>

class RaskEncoderConfig;

class RaskEncoder
{
public:
    explicit RaskEncoder() = default;

    enum ErrorCorrectionLevel { L = 0, M, Q, H };

    static QImage encodeData(const QString &data, RaskEncoderConfig config);
};

class RaskEncoderConfig
{
    QSize m_imageSize;
    bool m_border;
    bool m_transparent;
    RaskEncoder::ErrorCorrectionLevel m_errorCorrectionLevel;
    zxing::qrcode::ErrorCorrectionLevel m_correctionLevel;

public:
    explicit RaskEncoderConfig();

    QSize getImageSize() const;
    void setImageSize(QSize imageSize);

    bool getBorder() const;
    void setBorder(bool border);

    bool getTransparent() const;
    void setTransparent(bool transparent);

    RaskEncoder::ErrorCorrectionLevel getErrorCorrectionLevel() const;
    void setErrorCorrectionLevel(RaskEncoder::ErrorCorrectionLevel errorCorrectionLevel);

    zxing::qrcode::ErrorCorrectionLevel &getCorrectionLevel();
};
