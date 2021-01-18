#pragma once

#include <QImage>
#include <zxing/qrcode/ErrorCorrectionLevel.h>

class QtRaskEncoderConfig;

class QtRaskEncoder
{
public:
    explicit QtRaskEncoder() = default;

    enum ErrorCorrectionLevel { L = 0, M, Q, H };

    static QImage encodeData(const QString &data, QtRaskEncoderConfig config);
};

class QtRaskEncoderConfig
{
    QSize m_imageSize;
    bool m_border;
    bool m_transparent;
    QtRaskEncoder::ErrorCorrectionLevel m_errorCorrectionLevel;
    zxing::qrcode::ErrorCorrectionLevel m_correctionLevel;

public:
    explicit QtRaskEncoderConfig();

    QSize getImageSize() const;
    void setImageSize(QSize imageSize);

    bool getBorder() const;
    void setBorder(bool border);

    bool getTransparent() const;
    void setTransparent(bool transparent);

    QtRaskEncoder::ErrorCorrectionLevel getErrorCorrectionLevel() const;
    void setErrorCorrectionLevel(QtRaskEncoder::ErrorCorrectionLevel errorCorrectionLevel);

    zxing::qrcode::ErrorCorrectionLevel &getCorrectionLevel();
};
