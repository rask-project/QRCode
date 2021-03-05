INCLUDEPATH += $$PWD/src

include($$PWD/src/thirdparty/zxing/zxing.pri)

HEADERS += \
    $$PWD/src/raskencoder.h \
    $$PWD/src/raskqrcode.h \
    $$PWD/src/raskqrcodeprovider.h \
    $$PWD/src/RaskQRCode

SOURCES += \
    $$PWD/src/raskencoder.cpp \
    $$PWD/src/raskqrcodeprovider.cpp
