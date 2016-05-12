#ifndef AFISARE_H
#define AFISARE_H

#include <QDebug>

class Afisare : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString getData READ getData WRITE setData NOTIFY dataChanged)

private:
    QString myData;

public:
    explicit Afisare(QObject *parent = 0): QObject(parent) {}

    QString getData(){return myData;}

    Q_INVOKABLE void setData(QString t)
    {
        myData = t;
        dataChanged(myData);
    }

    Q_INVOKABLE void showData()
    {
        qDebug() << "Showing Data: " << getData() ;
    }

    std::string transformString(std::string& a)
    {
        a = myData.toStdString();
    }

signals:
    void dataChanged(QString t);
};

#endif // AFISARE_H
