import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5

Rectangle{
    height:25
    anchors{

        left: sidebar.right
        top: lineheader.bottom
        right: parent.right
    }
    color:"white"

    Rectangle{
        height: 25
        width: 140
        id:nameWindow
        anchors{

            left: parent.left
            top: parent.top
        }
        color:"green"

        radius:12
        Rectangle {
            width: parent.radius
            height: parent.radius
            anchors {
                top: parent.top
                right: parent.right
                left: parent.left

            }
            color: parent.color
        }
        Rectangle {
            width: parent.radius
            height: parent.radius
            anchors {
                bottom: parent.bottom

                left: parent.left

            }
            color: parent.color
        }
        Text{
            text:"wow"
            color: "white"
            font.pixelSize: 12
            anchors.centerIn: parent
        }

    }
}
