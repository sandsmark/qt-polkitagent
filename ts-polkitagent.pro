#-------------------------------------------------
#
# Project created by QtCreator 2016-05-01T16:23:34
#
#-------------------------------------------------

QT       += core gui dbus x11extras widgets

LIBS += -lpolkit-qt5-agent-1 -lpolkit-qt5-core-1 -lX11

TARGET = ts-polkitagent
TEMPLATE = app
DBUS_ADAPTORS = org.thesuite.polkitAuthAgent.xml

SOURCES += main.cpp\
    polkitinterface.cpp \
    authenticate.cpp

HEADERS  += \
    polkitinterface.h \
    authenticate.h

FORMS    += \
    authenticate.ui

unix {
    target.path = /usr/lib

    INSTALLS += target
}
