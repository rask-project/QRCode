INCLUDEPATH += $$PWD/src

include($$PWD/src/thirdparty/zxing/zxing.pri)

HEADERS += \
    $$PWD/src/qtraskencoder.h \
    $$PWD/src/qtraskqrcode.h \
    $$PWD/src/qtraskqrcodeprovider.h \
    $$PWD/src/QtRaskQRCode

SOURCES += \
    $$PWD/src/qtraskencoder.cpp \
    $$PWD/src/qtraskqrcodeprovider.cpp
