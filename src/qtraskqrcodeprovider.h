#pragma once

#include <QObject>
#include <QQuickImageProvider>

class QtRaskQRCodeProvider : public QQuickImageProvider
{
public:
    explicit QtRaskQRCodeProvider();

    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override;
};

