#pragma once

#include <QQmlApplicationEngine>
#include "qtraskqrcodeprovider.h"

namespace QtRask
{
class QRCode
{
public:
    QRCode() = default;

    inline static void registerImageProvider(QQmlApplicationEngine &engine) { engine.addImageProvider(QStringLiteral("QRCode"), new QtRaskQRCodeProvider); }
};
}
