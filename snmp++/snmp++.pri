INCLUDEPATH += $$PWD/include

win32 {
DEFINES += HAVE_CONFIG_H
LIBS += -L$$PWD/openssl/bin -lws2_32 -llibcrypto-1_1 -llibssl-1_1
INCLUDEPATH += $$PWD/openssl/include
}
macx {
# mac only
}
unix:!macx{
# linux only

}
SOURCES += \
    $$PWD/src/address.cpp \
    $$PWD/src/asn1.cpp \
    $$PWD/src/auth_priv.cpp \
    $$PWD/src/counter.cpp \
    $$PWD/src/ctr64.cpp \
    $$PWD/src/eventlist.cpp \
    $$PWD/src/eventlistholder.cpp \
    $$PWD/src/gauge.cpp \
    $$PWD/src/idea.cpp \
    $$PWD/src/integer.cpp \
    $$PWD/src/IPv6Utility.cpp \
    $$PWD/src/log.cpp \
    $$PWD/src/md5c.cpp \
    $$PWD/src/mp_v3.cpp \
    $$PWD/src/msec.cpp \
    $$PWD/src/msgqueue.cpp \
    $$PWD/src/notifyqueue.cpp \
    $$PWD/src/octet.cpp \
    $$PWD/src/oid.cpp \
    $$PWD/src/pdu.cpp \
    $$PWD/src/reentrant.cpp \
    $$PWD/src/sha.cpp \
    $$PWD/src/snmpmsg.cpp \
    $$PWD/src/target.cpp \
    $$PWD/src/timetick.cpp \
    $$PWD/src/usm_v3.cpp \
    $$PWD/src/uxsnmp.cpp \
    $$PWD/src/v3.cpp \
    $$PWD/src/vb.cpp
HEADERS += $$PWD/config.h \
    $$PWD/libsnmp.h
