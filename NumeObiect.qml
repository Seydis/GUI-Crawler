import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.1

Rectangle
{
    id: inserttextId
   // anchors.top: rectangle1Id.Bottom
    x:0
    y:200

    Label
    {
        id:labelId
        font.family: "Times New Roman"
        font.bold: true
        font.pointSize: 16
        anchors.margins: textMargin

        text:"Introduceti numele obiectului cautat"
        color: "#004400"
    }

    Rectangle{
        id: textinputRectId
        color: "#55AA55"
        width: textInputId.width + 10
        height: textInputId.height + 5
        radius: textMargin
        border.width: textBorderWidth
        border.color: "#116611"
        anchors.top: labelId.bottom

        TextInput
        {
            id:textInputId
            width: 670; height: 28

            font.family: "Times New Roman"
            font.bold: true
            font.pointSize: 15
            anchors.margins: textMargin

            maximumLength: 1000
            color: "#88CC88"
            selectByMouse: true
            selectionColor: "#004400"

            text: "Nume obiect..."



            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: containsMouse ? textInputId.cursorVisible = true : textInputId.cursorVisible = false
                onClicked: {
                      textInputId.forceActiveFocus()
                      textInputId.selectAll()
                    }
            }
        }
    }

}
