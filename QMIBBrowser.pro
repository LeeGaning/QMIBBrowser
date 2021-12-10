#-------------------------------------------------
#
# Project created by QtCreator 2013-10-24T21:45:49
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QMIBBrowser
TEMPLATE = app
DEFINES += HAVE_CONFIG_H
HEADERS += \
    src/mainwindow.h \
    src/snmpmanager.h \
    src/advancedoptiondialog.h \
    src/common.h \
    src/setrequestdialog.h \
    src/mibtree.h \
    src/resultdetaildialog.h

SOURCES += \
    src/mainwindow.cpp \
    src/main.cpp \
    src/snmpmanager.cpp \
    src/advancedoptiondialog.cpp \
    src/setrequestdialog.cpp \
    src/mibtree.cpp \
    src/common.cpp \
    src/resultdetaildialog.cpp

INCLUDEPATH += $$PWD/snmp++/include $$PWD/snmp++/

LIBS += -L$$PWD/snmp++ -lws2_32

LIBS += -L$$PWD/snmp++/openssl/lib -llibcrypto -llibssl

CONFIG(debug, debug | release) {
    LIBS += -lsnmp_ppd
} else {
    DEFINES += QT_NO_DEBUG_OUTPUT QT_NO_WARNING_OUTPUT
    LIBS += -lsnmp_pp
}

FORMS += \
    ui/mainwindow.ui \
    ui/advancedoptiondialog.ui \
    ui/setrequestdialog.ui \
    ui/resultdetaildialog.ui

RESOURCES += \
    resource/resource.qrc

OTHER_FILES += \
    resource/logo.rc

RC_FILE += \
    resource/logo.rc
