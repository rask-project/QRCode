#pragma once

#include <QQmlApplicationEngine>
#include "raskqrcodeprovider.h"

namespace Rask
{
    class QRCode
    {
    public:
        QRCode() = default;

        inline static void registerImageProvider(QQmlApplicationEngine &engine) { engine.addImageProvider(QStringLiteral("QRCode"), new RaskQRCodeProvider); }
    };
}
