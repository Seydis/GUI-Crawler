import QtQuick 2.2
import QtQuick.Controls 1.1

Rectangle
{
    id: rootID
    property alias vFieldLabelId: labelId
    property alias vFieldTextId: textFieldId

    Label
    {
        id:labelId
        text:"Some Label"
    }

    TextInput
    {
        id:textFieldId
        anchors.top: labelId.bot
        font.family: "Times New Roman"
        font.bold: true
        maximumLength: 1000
    }

}
