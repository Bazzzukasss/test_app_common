QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
DESTDIR = ../bin

SOURCES += \
    src/main.cpp \
    src/main_window.cpp \

HEADERS += \
    inc/main_window.h \

FORMS += \
    forms/main_window.ui

RESOURCES += \
    assets/qss_icons/qss_icons.qrc \
    assets/styles/styles.qrc

INCLUDEPATH += \
        inc \
        $$PWD/../app_common/inc

LIBS *= -L$$OUT_PWD/$$DESTDIR -lapp_common

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
