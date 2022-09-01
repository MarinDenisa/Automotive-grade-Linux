import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5

WindowType{
    Text{
        text: "here is update window"
        font.pixelSize: 20
        color: "blue"
        anchors.centerIn: parent
    }

    Text{
        id:titleUpdate
        font.pixelSize: 40
        color: aString=="Dark" ? "white" : "black"
        text: "Update"
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 20
            leftMargin: 50
        }
    }
    Rectangle{
        id:updateBubble1
        width: 400
        height: 240
        radius: 5
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: titleUpdate.bottom
            left: parent.left
            topMargin: 40
            leftMargin: 50
        }

        Text{
            id:updateBubbleTitle1
            font.pixelSize: 30
            color: aString=="Dark" ? "white" : "black"
            text: "Open Docker"
            anchors{
                top: parent.top
                left: parent.left
                topMargin: 10
                leftMargin: 20
            }
        }

        RoundButton{
            id:updateBubbleButton1
            radius: 5
            width: 180
            height: 60
            anchors{
                top: updateBubbleTitle1.bottom
                left: parent.left
                topMargin: 20
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:5
            }
        }

        Text{
            id:updateBubbleText1
            font.pixelSize: 20
            color: aString=="Dark" ? "white" : "black"
            text: "First press the button to run\ndocker in background."
            anchors{
                top: updateBubbleButton1.bottom
                left: parent.left
                topMargin: 10
                leftMargin: 20
            }
        }


    }
    Rectangle{
        id:updateBubble2
        width: 200
        height: 120
        radius: 5
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: titleUpdate.bottom
            left: updateBubble1.right
            topMargin: 40
            leftMargin: 50
        }

        Text{
            id:updateBubbleTitle2
            font.pixelSize: 20
            color: aString=="Dark" ? "white" : "black"
            text: "Open Aktualizr"
            anchors{
                top: parent.top
                left: parent.left
                topMargin: 10
                leftMargin: 20
            }
        }

        RoundButton{
            id:updateBubbleButton2
            radius: 5
            width: 90
            height: 30
            anchors{
                top: updateBubbleTitle2.bottom
                left: parent.left
                topMargin: 10
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:5
            }
        }

        Text{
            id:updateBubbleText2
            font.pixelSize: 12
            color: aString=="Dark" ? "white" : "black"
            text: "First press the button to run\naktualizr in background."
            anchors{
                top: updateBubbleButton2.bottom
                left: parent.left
                topMargin: 10
                leftMargin: 20
            }
        }


    }



}




