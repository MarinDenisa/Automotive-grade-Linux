import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5
import QtQuick 2.10
import Qt.labs.qmlmodels 1.0
import QtQuick.Controls 1.4
import Qt.labs.platform 1.1


WindowType{
    property var light1: "stop"

    Text{
        id: titleDevice
        text: "Device"
        font.pixelSize: 40
        color: aString=="Dark" ? "white" : "black"
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 20
            leftMargin: mainw.width/19.2
        }
    }
    Rectangle{
        id:deviceBubble1
        width: mainw.width/4
        height: mainw.height/4.5
        radius: mainw.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: titleDevice.bottom
            left: parent.left
            topMargin: mainw.width/48
            leftMargin: mainw.width/19.2
        }

        Text{
            id:deviceBubbleTitle1
            font.pixelSize: mainw.width/56.47
            color: aString=="Dark" ? "white" : "black"
            text: "Create device"

            anchors{
                top: parent.top
                left: parent.left
                topMargin: 10
                leftMargin: 20
            }
        }



        RoundButton{
            id:deviceBubbleButton1
            radius: mainw.width/192
            width: mainw.width/10.66
            height: mainw.height/18

            anchors{
                top: deviceBubbleTitle1.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:mainw.width/192
            }
            Text{
                visible: true
                text: "new"
                color: "black"
                anchors.centerIn: parent
            }
            onClicked:{
                process1.start("scripts/genDevice.sh",[" "])
            }



        }


        Text{
            id:deviceBubbleText1
            font.pixelSize: mainw.width/80
            color: aString=="Dark" ? "white" : "black"
            text: "Press the button to create a new device"
            anchors{
                top: deviceBubbleButton1.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
        }


    }

    Rectangle{
        id:deviceBubble2
        width: mainw.width/4
        height: mainw.height/4.5
        radius: mainw.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: titleDevice.bottom
            left: deviceBubble1.right
            topMargin: mainw.width/48
            leftMargin: mainw.width/19.2
        }

        Text{
            id:deviceBubbleTitle2
            font.pixelSize: mainw.width/56.47
            color: aString=="Dark" ? "white" : "black"
            text: "Select device"

            anchors{
                top: parent.top
                left: parent.left
                topMargin: 10
                leftMargin: 20
            }
        }



        RoundButton{
            id:deviceBubbleButton2
            radius: mainw.width/192
            width: mainw.width/10.66
            height: mainw.height/18

            anchors{
                top: deviceBubbleTitle2.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:mainw.width/192
            }
            Text{
                visible: true
                text: "new"
                color: "black"
                anchors.centerIn: parent
            }
            onClicked: fileDialog.open()


        }


        Text{
            id:deviceBubbleText2
            font.pixelSize: mainw.width/80
            color: aString=="Dark" ? "white" : "black"
            text: "Device: "
            anchors{
                top: deviceBubbleButton2.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
        }

        Text {
            id:filenameDev
            text: textMetricsDev.text
            font.pixelSize: textMetricsDev.font.pixelSize
            color: aString=="Dark" ? "white" : "black"
            elide: Text.ElideRight
            anchors{
                right: parent.right
                left: deviceBubbleText2.right
                verticalCenter: deviceBubbleText2.verticalCenter
                leftMargin: 2

            }
        }


    }


    FileDialog{
        id:fileDialog
        onAccepted:{
            textMetricsDev.text = rmExt(basename((fileDialog.currentFile).toString()))
            dplusf= rmExt(basename((fileDialog.currentFile).toString()))
            copydev= rmExt(basename((fileDialog.currentFile).toString()))
        }
    }

    TextMetrics
        {
            id: textMetricsDev

            font.pixelSize: mainw.width/90
            text: "select a device"
        }


    Rectangle{
        id:rlc
        width:mainw.width
        height:mainw.height/2.1
        /*
anchors{

    top: deviceBubble1.bottom
    leftMargin:300
    bottom: statusbar.top
    right: parent.left
    topMargin: 10
    leftMargin: 300
    bottomMargin: 100


}
*/
        anchors{
            top: deviceBubble1.bottom
            left: parent.left
            right: parent.right
            topMargin: mainw.width/48
            leftMargin: mainw.width/19.2
            bottom: parent.bottom
            rightMargin: 20
            bottomMargin: 40

        }
        TableView {
            id: tableView
            model: dataModel
            anchors.fill: parent


            TableViewColumn {
                width: 100
                title: "Coloana"
                role: "color"

            }
            TableViewColumn {
                width: 100
                title: "ViewCol"
                role: "text"
            }

            itemDelegate: Item {
                Text {
                    anchors.right: parent.right
                    //renderType: Text.NativeRendering
                    text: styleData.value
                }

            }
        }

        /*  Rectangle {
        id:kol
        width: 360
        height: 360
        anchors{
            top: deviceBubble1
            bottom: statusbar
            left:sidebar
            right: parent
        }

    Rectangle {
        id:mos
        width: 360
        height: 360
        anchors{
            top: deviceBubble1
            bottom: statusbar
            left:sidebar
            right: parent


        }
        */

        ListModel {
            id: dataModel
            ListElement {
                color: "purple"
                text: "pisici"
            }
            ListElement {
                color: "pink"
                text: "sunttare"
            }
            ListElement {
                color: "green"
                text: "Ralucaaa"
            }
            ListElement {
                color: "green"
                text: "purple"
            }
            // }



            // }

        }
    }
}
