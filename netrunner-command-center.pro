QT += qml quick quickcontrols2 #webview

TEMPLATE = app

CONFIG += c++11
unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += Magick++

SOURCES += main.cpp \
    wallpaper/unsplash.cpp \
    wallpaper/photo.cpp \
    wallpaper/photolist.cpp \
    wallpaper/photosavethread.cpp \
    wallpaper/filesystem.cpp \
    wallpaper/localphotolist.cpp

RESOURCES += qml.qrc

QMAKE_LFLAGS += -fuse-ld=gold

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

TRANSLATIONS  += lang/netrunner-command-center.ts \
              lang/netrunner-command-center_nl_NL.ts \
              lang/netrunner-command-center_ast.ts \
              lang/netrunner-command-center_ca.ts \
              lang/netrunner-command-center_cs.ts \
              lang/netrunner-command-center_de.ts \
              lang/netrunner-command-center_es.ts \
              lang/netrunner-command-center_es_AR.ts \
              lang/netrunner-command-center_fa_IR.ts \
              lang/netrunner-command-center_fr.ts \
              lang/netrunner-command-center_hi_IN.ts \
              lang/netrunner-command-center_hr_HR.ts \
              lang/netrunner-command-center_hu.ts \
              lang/netrunner-command-center_id_ID.ts \
              lang/netrunner-command-center_it.ts \
              lang/netrunner-command-center_pl.ts \
              lang/netrunner-command-center_pt_BR.ts \
              lang/netrunner-command-center_uk.ts \
              lang/netrunner-command-center_tr_TR.ts \

# Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target
target.path = /usr/bin
sources.files = $$SOURCES $$RESOURCES *.pro
sources.path = .

desktop.path = /usr/share/applications
desktop.files += netrunner-command-center.desktop

icon.files += netrunner-command-center.svg
icon.path += /usr/share/pixmaps

#qml.path = /usr/lib/qt5/qml/netrunner-command-center
#qml.files += package.qml

INSTALLS += target desktop icon #qml

DISTFILES +=

HEADERS += \
    wallpaper/unsplash.h \
    wallpaper/photo.h \
    wallpaper/photolist.h \
    wallpaper/photosavethread.h \
    wallpaper/filesystem.h \
    wallpaper/localphotolist.h
