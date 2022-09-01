import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5

WindowType{
    Text{
        text: "here is config window"
        font.pixelSize: 20
        color: "blue"
        anchors.centerIn: parent
    }
    Text{
    id:configtitleUpdate
    text:"Config"
    color:"white"
    font.pixelSize: 40
    anchors{
        top: parent.top
        left: parent.left
        topMargin: 20
        leftMargin: 20
    }
    }
    Rectangle{
            id:configBubble1
            width: mainw.width/4.8
            height: mainw.height/4.5
            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: configtitleUpdate.bottom
                left: parent.left
                topMargin: 40
                leftMargin: 20
            }

            Text{
                id:configBubbleTitle1
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
                id:configBubbleButton1
                radius: mainw.width/192
                width: mainw.width/10.66
                height: mainw.height/18
                anchors{
                    top: configBubbleTitle1.bottom
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
                id:configBubbleText1
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "First press the button to run\ndocker in background."
                anchors{
                    top: configBubbleButton1.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
            }


        }

    Rectangle{
            id:configBubble2
            width: mainw.width/4.8
            height: mainw.height/4.5
            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: configtitleUpdate.bottom
                left: configBubble1.right
                topMargin: 40
                leftMargin: 20
            }

            Text{
                id:configBubbleTitle2
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
                id:configBubbleButton2
                radius: mainw.width/192
                width: mainw.width/10.66
                height: mainw.height/18
                anchors{
                    top: configBubbleTitle2.bottom
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
                id:configBubbleText2
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "First press the button to run\ndocker in background."
                anchors{
                    top: configBubbleButton2.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
            }


        }


    Rectangle{
            id:configBubble3
            width: mainw.width/4.8
            height: mainw.height/4.5
            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: configBubble1.bottom
                left: parent.left
                topMargin: 40
                leftMargin: 20
            }

            Text{
                id:configBubbleTitle3
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
                id:configBubbleButton3
                radius: mainw.width/192
                width: mainw.width/10.66
                height: mainw.height/18
                anchors{
                    top: configBubbleTitle3.bottom
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
                id:configBubbleText3
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "First press the button to run\ndocker in background."
                anchors{
                    top: configBubbleButton3.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
            }


        }
    Rectangle{
            id:configBubble4
            width: mainw.width/4.8
            height: mainw.height/4.5
            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: configBubble2.bottom
                left: configBubble3.right
                topMargin: 40
                leftMargin: 20
            }

            Text{
                id:configBubbleTitle4
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
                id:configBubbleButton4
                radius: mainw.width/192
                width: mainw.width/10.66
                height: mainw.height/18
                anchors{
                    top: configBubbleTitle4.bottom
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
                id:configBubbleText4
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "First press the button to run\ndocker in background."
                anchors{
                    top: configBubbleButton4.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
            }




}

}
