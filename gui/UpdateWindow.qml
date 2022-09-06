import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5
import QtQuick.Dialogs 1.2
import QtQuick 2.12
import Qt.labs.qmlmodels 1.0
//import TableModel 0.1
import QtQuick 2.12
import Qt.labs.qmlmodels 1.0
 import Qt.labs.platform 1.1
import QtQuick.Controls 1.4


WindowType{
    property var lightup1: "stop"
    property var lightup2: "stop"



    Text{
        id:titleUpdate
        font.pixelSize: 40
        color: aString=="Dark" ? "white" : "black"
        text: "Update"
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 20
            leftMargin: mainw.width/19.2
        }
    }
    Rectangle{
        id:updateBubble1
        width: mainw.width/4.8
        height: mainw.height/4.5
        radius: mainw.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: titleUpdate.bottom
            left: parent.left
            topMargin: mainw.width/48
            leftMargin: mainw.width/19.2
        }

        Text{
            id:updateBubbleTitle1
            font.pixelSize: mainw.width/56.47
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
            width: 10
            height: 10
            radius: 5
            anchors{
                top:parent.top
                right: parent.right
                topMargin: 10
                rightMargin: 10
            }
            background: Rectangle{
                radius:10
                color: lightup1=="stop"? "red" : "green"
            }
        }

        RoundButton{
            id:updateBubbleButton1
            radius: mainw.width/192
            width: mainw.width/10.66
            height: mainw.height/18
            anchors{
                top: updateBubbleTitle1.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:mainw.width/192
            }
        }

        Text{
            id:updateBubbleText1
            font.pixelSize: mainw.width/80
            color: aString=="Dark" ? "white" : "black"
            text: "First press the button to run\ndocker in background."
            anchors{
                top: updateBubbleButton1.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
        }


    }



    Rectangle{
        id:updateBubble2
        width: mainw.width/4.8
        height: mainw.height/4.5
        radius: mainw.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: titleUpdate.bottom
            left: updateBubble1.right
            topMargin: mainw.width/48
            leftMargin: mainw.width/19.2
        }

        Text{
            id:updateBubbleTitle2
            font.pixelSize: mainw.width/56.47
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
            width: 10
            height: 10
            radius: 5
            anchors{
                top:parent.top
                right: parent.right
                topMargin: 10
                rightMargin: 10
            }
            background: Rectangle{
                radius:10
                color: lightup2=="stop"? "red" : "green"
            }
        }

        RoundButton{
            id:updateBubbleButton2
            radius: mainw.width/192
            width: mainw.width/10.66
            height: mainw.height/18
            anchors{
                top: updateBubbleTitle2.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:mainw.width/192
            }
        }

        Text{
            id:updateBubbleText2
            font.pixelSize: mainw.width/80
            color: aString=="Dark" ? "white" : "black"
            text: "Second press the button to run\naktualizr in background."
            anchors{
                top: updateBubbleButton2.bottom
                left: parent.left
                topMargin: mainw.width/96
                leftMargin: 20
            }
        }
    }

        Rectangle{
            id:updateBubble3
            width: mainw.width/4.8
            height: mainw.height/4.5
            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: updateBubble1.bottom
                left: parent.left
                topMargin: mainw.width/48
                leftMargin: mainw.width/19.2
            }

            Text{
                id:updateBubbleTitle3
                font.pixelSize: mainw.width/56.47
                color: aString=="Dark" ? "white" : "black"
                text: "Open a file"
                anchors{
                    top: parent.top
                    left: parent.left
                    topMargin: 10
                    leftMargin: 20
                }
            }


            RoundButton{
                id:updateBubbleButton3
                radius: mainw.width/192
                width: mainw.width/10.66
                height: mainw.height/18
                anchors{
                    top: updateBubbleTitle3.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
                background: Rectangle{
                    color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                    radius:mainw.width/192

                }
                onClicked: fileDialog.open()
            }

            Text{
                id:updateBubbleText3
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "After a device is connected\nselect a file to update."
                anchors{
                    top: updateBubbleButton3.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
            }



            FileDialog{
                    id:fileDialog
                    onAccepted:{
                        textMetrics.text = this.fileUrl
                    }
                }


        }

        Rectangle{
            id:updateBubble4
            width: mainw.width/4.8
            height: mainw.height/4.5
            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: updateBubble2.bottom
                left: updateBubble3.right
                topMargin: mainw.width/48
                leftMargin: mainw.width/19.2
            }

            Text{
                id:updateBubbleTextDevice1
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "Device:"
                anchors{
                    top: parent.top
                    left: parent.left
                    topMargin: 10
                    leftMargin: 20
                }
            }
            Text{
                id:updateBubbleTextDevice2
                font.pixelSize: mainw.width/90
                color: aString=="Dark" ? "white" : "black"
                text: "unknown"
                anchors{

                    left: updateBubbleTextDevice1.right
                    verticalCenter: updateBubbleTextDevice1.verticalCenter
                    leftMargin: 2
                }
            }
            Text{
                id:updateBubbleTextFile1
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "File:"
                anchors{

                    left: parent.left
                    top: updateBubbleTextDevice1.bottom
                    leftMargin: 20
                    topMargin: mainw.width/96
                }
            }
            TextMetrics
                {
                    id: textMetrics

                    font.pixelSize: mainw.width/90
                    text: "select a file"
                }

            Text {

                text: textMetrics.text
                font.pixelSize: textMetrics.font.pixelSize
                color: aString=="Dark" ? "white" : "black"
                elide: Text.ElideRight
                anchors{
                    right: parent.right
                    left: updateBubbleTextFile1.right
                    verticalCenter: updateBubbleTextFile1.verticalCenter
                    leftMargin: 2

                }
            }


            RoundButton{
                id:updateBubbleButton4
                radius: mainw.width/192
                width: mainw.width/10.66
                height: mainw.height/18
                anchors{
                    top: updateBubbleText4.bottom
                    horizontalCenter: parent.horizontalCenter
                    topMargin: mainw.width/320

                }
                background: Rectangle{
                    color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                    radius:mainw.width/192
                }
                onClicked: scriptLauncher.launchScript()
            }

            Text{
                id:updateBubbleText4
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "Update file selected:"
                anchors{
                    top: updateBubbleTextFile1.bottom

                    topMargin: mainw.width/48
                    horizontalCenter: parent.horizontalCenter
                }
            }
            Rectangle{
                color: aString=="Dark" ?  "black" : "white"
                anchors{
                    left: parent.left
                    right: parent.right
                    top: updateBubbleTextFile1.bottom
                    topMargin: mainw.width/128
                }
                height: mainw.width/192
            }
            Rectangle{
                color: aString=="Dark" ? "darkgray" : " lightgray"
                anchors{

                    top: updateBubbleTextFile1.bottom
                    bottom: updateBubbleText4.top
                    topMargin: mainw.width/128
                    bottomMargin: mainw.width/128
                    horizontalCenter: parent.horizontalCenter


                }
                width: mainw.width/240
            }



        }

        Rectangle{
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                left: updateBubble3.right
                right: updateBubble4.left
                top: updateBubble3.top
                topMargin: mainw.width/10.66

            }
            height: mainw.width/192
        }


        Rectangle{
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                left: updateBubble3.right
                right: updateBubble4.left
                top: updateBubble3.top
                topMargin: mainw.width/32

            }
            height: mainw.width/192
        }

        Rectangle{
            id:tablehover

            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: updateBubble3.bottom
                left: parent.left
                right: parent.right
                bottom: parent.bottom
                topMargin: mainw.width/48
                leftMargin: mainw.width/19.2
                bottomMargin: 40
                rightMargin: 20
            }
            TableView {
                id: tableView
                model: dataModel
                anchors.fill: parent


                TableViewColumn {
                    width: parent.width/5

                    title: "File"
                    role: "name"

                }
                TableViewColumn {
                    width: parent.width/5
                    title: "Date"
                    role: "text"
                }

                TableViewColumn {
                    width: parent.width/5
                    title: ""
                }
                TableViewColumn {

                            id:checkcolumn1

                            role: "check"
                            title: "Update"
                            delegate: Item {

                                anchors.fill: parent
                                CheckBox {
                                    id:checkbox
                                    //anchors.fill:parent

                                    anchors.centerIn: parent
                                    checked: false
                                }
                            }
                }

                itemDelegate: Item {
                    Text {
                        anchors.centerIn: parent
                       //renderType: Text.NativeRendering
                        text: styleData.value
                    }

                }
            }

            ListModel
            {
                        id: dataModel
                        ListElement {
                            name: "filename1"
                            text: "01.01.2022"
                        }
                        ListElement {
                            name: "filename2"
                            text: "25.02.2022"
                        }
                        ListElement {
                            name: "tst.txt"
                            text: "12.06.2022"
                        }
                        ListElement {
                            name: "file"
                            text: "22.10.2022"
                        }

            }




            /*TableView {
                anchors.fill: parent
                columnSpacing: 1
                rowSpacing: 1
                clip: true

                model: TableModel {}

                delegate: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 50
                    Text {
                        text: display
                    }
                }
            }*/
        }





}




