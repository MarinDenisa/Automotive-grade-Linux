import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5

Item{
    Rectangle {
        color: aString=="Dark" ? "#1F2022" :    "linen"
        //radius: 100
        anchors.fill:parent
        RoundButton{
            radius: 3
            width: 60
            height:20
            background: Rectangle{
                border.width: 2
                border.color: "lightgray"
                radius: 3
                color: parent.hovered ? "gray" : (aString=="Dark" ? "white" : "black")
            }
            Text{
                text:"Back"
                font.pixelSize: 16
                color: aString=="Dark" ? "black" : "white"
                anchors.centerIn: parent
            }
            anchors{
                right: parent.right
                bottom: parent.bottom
                rightMargin: 20
                bottomMargin: 10
            }

            onClicked: stack.push("HomeWindow.qml")
        }
    }
}
