import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5

Rectangle {
    anchors{
        top: bar.bottom
        left: sidebarCover.right
        bottom: statusbar.top
        right: parent.right
    }

        visible: true
        color: aString=="Dark" ? "#1F2022" :    "linen"
        Text{
            text: "here is home window"
            font.pixelSize: 20
            color: "blue"
            anchors.centerIn: parent
        }




        Text{
            id:welcometext
            text: "Welcome!"
            font.pixelSize: 35
            color: "green" //modify
            anchors{
                left: parent.left
                top: parent.top
                topMargin: 20
            }
        }
        Text{
            text:  "tralalalalalallasld\n\n\n\n\n\\n\n\n\ntralalalalalal"
            font.pixelSize: 18
            color:"green"
            anchors{
                left: parent.left
                top: welcometext.bottom
                topMargin: 20
            }
        }

}
