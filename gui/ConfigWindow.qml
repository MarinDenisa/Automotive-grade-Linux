import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5
import Process 1.0

WindowType{





    property var light3: "stop"





    Text{
        id:titleConfig
        font.pixelSize: 40
        color: aString=="Dark" ? "white" : "black"
        text: "Config"
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 20
            leftMargin: mainw.width/19.2
        }
    }
    Rectangle{
        id:configBubble1
        width: mainw.width/4.8
        height: mainw.height/4.5
        radius: mainw.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: titleConfig.bottom
            left: parent.left
            topMargin: mainw.width/48
            leftMargin: mainw.width/19.2
        }

        Text{
            id:configBubbleTitle1
            font.pixelSize: mainw.width/56.47
            color: aString=="Dark" ? "white" : "black"
            text: "Install resources"
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
                color: light3=="stop" ? "red" : "green"
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
            onClicked: {
                str="doi"
                process1.start("/home/dragos/Desktop/GitHub/ota-gui/install_ota-lith.sh",["-i"])
            }

        }

        Text{
            id:configBubbleText1
            font.pixelSize: mainw.width/80
            color: aString=="Dark" ? "white" : "black"
            text: "First press the button to \ninstall the resources."
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
            top: titleConfig.bottom
            left: configBubble1.right
            topMargin: mainw.width/48
            leftMargin: mainw.width/19.2
        }

        Text{
            id:configBubbleTitle2
            font.pixelSize: mainw.width/56.47
            color: aString=="Dark" ? "white" : "black"
            text: "Install ota-lith"
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

            onClicked: {
                str="doi"
                process1.start("/home/dragos/Desktop/GitHub/ota-gui/install_ota-lith.sh",["-o"])
            }
        }

        Text{
            id:configBubbleText2
            font.pixelSize: mainw.width/80
            color: aString=="Dark" ? "white" : "black"
            text: "Second press the button to \ninstall ota-lith in background."
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
                topMargin: mainw.width/48
                leftMargin: mainw.width/19.2
            }

            Text{
                id:configBubbleTitle3
                font.pixelSize: mainw.width/56.47
                color: aString=="Dark" ? "white" : "black"
                text: "Install aktualizr"
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
                    color: light4=="stop"? "red" : "green"
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
                onClicked: {
                    str="doi"
                    process1.start("/home/dragos/Desktop/GitHub/ota-gui/install_akt_ota-cli.sh",["-a"])
                }
            }

            Text{
                id:configBubbleText3
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "Third press the button to \ninstall aktualizr in background."
                anchors{
                    top: configBubbleButton3.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }
            }}






            Rectangle{
                id:configBubble4
                width: mainw.width/4.8
                height: mainw.height/4.5
                radius: mainw.width/192
                color: aString=="Dark" ? "darkgray" : " lightgray"
                anchors{
                    top: configBubble2.bottom
                    left: configBubble3.right
                    topMargin: mainw.width/48
                    leftMargin: mainw.width/19.2
                }

                Text{
                    id:configBubbleTitle4
                    font.pixelSize: mainw.width/56.47
                    color: aString=="Dark" ? "white" : "black"
                    text: "Install ota-cli"
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
                    onClicked: {
                        str="doi"
                        process1.start("/home/dragos/Desktop/GitHub/ota-gui/install_akt_ota-cli.sh",["-o"])
                    }
                }

                Text{
                    id:configBubbleText4
                    font.pixelSize: mainw.width/80
                    color: aString=="Dark" ? "white" : "black"
                    text: "Fourth press the button to \ninstall ota-cli in background"
                    anchors{
                        top: configBubbleButton4.bottom
                        left: parent.left
                        topMargin: mainw.width/96
                        leftMargin: 20
                    }
                }


}











        Rectangle{
            id:infoConfig

            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: configBubble3.bottom
                left: parent.left
                right: parent.right
                bottom: parent.bottom
                topMargin: mainw.width/48
                leftMargin: mainw.width/19.2
                bottomMargin: 40
                rightMargin: 20
            }
            Text{
                id:configText
                font.pixelSize: mainw.width/80
                color: aString=="Dark" ? "white" : "black"
                text: "Informatii pentru instalare"
                anchors{
                    top: configBubble3.bottom
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }

            }


    }

}
