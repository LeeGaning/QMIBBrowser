QT -= gui
TARGET = snmp_pp

android {
    TEMPLATE = app
} else {
    TEMPLATE = lib
}
DEFINES += SNMP_PP_LIBRARY

CONFIG += c++11 static

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include($$PWD/snmp++.pri)

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
DESTDIR     = $$PWD/
