import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.1

Window {
    visible: true
    width: 640
    height: 480
    color: "#45baba"
    maximumHeight: 480
    minimumHeight: 480
    maximumWidth: 680
    minimumWidth: 680
    title: qsTr("Crawler")

    property int textMargin: 5
    property int textBorderWidth: 2



    MainForm {
        color: "#407f7f"
        anchors.fill: parent

        Column
        {
            id: rootId
            spacing: 3

            Rectangle
            {
                id: rectangle1Id
                width: 680
                height: textID.implicitHeight+5
                //radius: 0
                gradient: Gradient {
                    GradientStop {
                            position: 0
                            color: "#003333"
                        }

                        GradientStop {
                            position: 1
                            color: "#0d4d4d"
                        }
                    }
                    border.color: "#003333"
                    border.width: 1
                    //anchors.centerIn: parent


                    Text{
                        id: textID
                        text: qsTr("Crawler Emag.ro si W/e.ro")
                        color: "#669999"
                        //font.italic: true
                        font.family: "Britannic Bold"
                        anchors.centerIn: rectangle1Id
                        font.pointSize: 20
                    }
                 }

         //  VerticalField{
         //       anchors.top: rectangle1Id.bottom
         //       vFieldLabelId.text: "Introduceti nume:"
         //       vFieldTextId.text: "Nume Produs"
         //   }

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

        }

            Rectangle
            {
                id: buttonRectId
                x: 320
                y: 400


                Button
                {
                    id: btn1ID
                    text: "Trimite"

                   onClicked: {
                       inserttextId.visible = false;
                       //buttonRectId.visible = false;
                   }

                }
            }


            mouseArea.onClicked: {
             //   Qt.quit();
           }
    }
}
