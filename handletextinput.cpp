#include "handletextfield.h"

HandleTextField::HandleTextField(QObject *parent): QObject(parent)
{

}

void HandleTextField::handleSubmitTextField (const QString& in)
{
    qDebug() << "c++: HandleTextInput::handleSubmitTextInput" << in;
    emit setTextField(in.toUpper());
}
