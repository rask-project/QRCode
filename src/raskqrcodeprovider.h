#pragma once

#include <QObject>
#include <QQuickImageProvider>

class RaskQRCodeProvider : public QQuickImageProvider
{
public:
    explicit RaskQRCodeProvider();

    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override;
};

