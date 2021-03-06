#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QTranslator>
#include <QLocale>
#include <QQuickStyle>
//build section
// #include <QtWebView/QtWebView>
//wallpaper section
#include <QCoreApplication>
#include <QDebug>
#include <QDir>

#include "wallpaper/filesystem.h"
#include "wallpaper/unsplash.h"
#include "wallpaper/photo.h"
#include "wallpaper/photolist.h"
#include "wallpaper/localphotolist.h"

#include <Magick++.h>
using namespace Magick;

int main(int argc, char *argv[])
{
    //settings for wallpaper part
    InitializeMagick(*argv);
    
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    
    FileSystem::init();
    
//     QtWebView::initialize();

    QQuickStyle::setStyle("Material");

    QTranslator appTranslator;

    appTranslator.load(":/lang/netrunner-command-center_" +
                       QLocale::system().name());
    app.installTranslator(&appTranslator);
    
    // Register C++ class in QML
    qmlRegisterType<Unsplash>("Unwallpaper", 1, 0, "Unsplash");
    qmlRegisterType<Photo>("Unwallpaper", 1, 0, "PhotoModel");
    qmlRegisterType<PhotoList>("Unwallpaper", 1, 0, "PhotoListModel");
    qmlRegisterType<LocalPhotoList>("Unwallpaper", 1, 0, "LocalPhotoListModel");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
