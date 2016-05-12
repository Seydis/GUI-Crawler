#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include <afisare.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<Afisare>("com.test.afisare",1,0,"Afisare");


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));



    return app.exec();
}
