# QRCode
QML wrapper library for [ZXing](https://github.com/zxing/zxing) create QRCode

## How to include

Add the following line to your .pro file.
```qmake
include(QRCode/QRCode.pri)
```

Add the following lines to your main.cpp file.
```cpp

#include <RaskQRCode>
...
QQmlApplicationEngine engine;
Rask::QRCode::registerImageProvider(engine);

```

Add the following lines to your *.qml file.
```qml
Image {
    id: qrCode

    fillMode: Image.PreserveAspectFit
    source: "image://QRCode/[Your text]"
    sourceSize.width: 200
    sourceSize.height: 200

    anchors.horizontalCenter: parent.horizontalCenter
}
```
