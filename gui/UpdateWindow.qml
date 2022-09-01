import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5

WindowType{
    property var light1: "stop"
    property var light2: "stop"

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
            topMargin: 40
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
                color: light1=="stop"? "red" : "green"
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
            topMargin: 40
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
                color: light2=="stop"? "red" : "green"
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
            text: "First press the button to run\naktualizr in background."
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
                topMargin: 40
                leftMargin: mainw.width/19.2
            }

            Text{
                id:updateBubbleTitle3
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
                    color: light2=="stop"? "red" : "green"
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
            }

            Text{
                id:updateBubbleText3
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "First press the button to run\naktualizr in background."
                anchors{
                    top: updateBubbleButton3.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
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
                topMargin: 40
                leftMargin: mainw.width/19.2
            }

            Text{
                id:updateBubbleTitle4
                font.pixelSize: mainw.width/56.47
                color: aString=="Dark" ? "white" : "black"
                text: "Update a file to your device"
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
                    color: light2=="stop"? "red" : "green"
                }
            }

            RoundButton{
                id:updateBubbleButton4
                radius: mainw.width/192
                width: mainw.width/10.66
                height: mainw.height/18
                anchors{
                    top: updateBubbleTitle4.bottom
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
                id:updateBubbleText4
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "First press the button to run\naktualizr in background."
                anchors{
                    top: updateBubbleButton4.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
            }


        }






}




