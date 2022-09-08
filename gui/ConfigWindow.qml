import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5
import Process 1.0

WindowType{

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
        height: mainw.height/5.9
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
            font.pixelSize: mainw.width/83
            color: aString=="Dark" ? "white" : "black"
            text: "Install resources"
            anchors{
                top: parent.top
                left: parent.left
                topMargin: 7
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
            width: mainw.width/13
            height: mainw.height/24
            anchors{
                top: configBubbleTitle1.bottom
                left: parent.left
                topMargin: mainw.width/125
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:mainw.width/192
            }
            onClicked: {
                str="doi"
                curProcess=1
                process1.start("scripts/install_ota-lith.sh",["-i"])
            }

        }

        Text{
            id:configBubbleText1
            font.pixelSize: mainw.width/83
            color: aString=="Dark" ? "white" : "black"
            text: "First press the button to \ninstall the resources."
            anchors{
                top: configBubbleButton1.bottom
                left: parent.left
                topMargin: mainw.width/180
                leftMargin: 20
            }
        }
    }



    Rectangle{
        id:configBubble2
        width: mainw.width/4.8
        height: mainw.height/5.9
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
            font.pixelSize: mainw.width/83
            color: aString=="Dark" ? "white" : "black"
            text: "Install ota-lith"
            anchors{
                top: parent.top
                left: parent.left
                topMargin: 7
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
            width: mainw.width/13
            height: mainw.height/24
            anchors{
                top: configBubbleTitle2.bottom
                left: parent.left
                topMargin: mainw.width/125
                leftMargin: 20
            }
            background: Rectangle{
                color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                radius:mainw.width/192
            }

            onClicked: {
                str="doi"
                curProcess=1
                process1.start("scripts/install_ota-lith.sh",["-o"])
            }
        }

        Text{
            id:configBubbleText2
            font.pixelSize: mainw.width/83
            color: aString=="Dark" ? "white" : "black"
            text: "Second press the button to \ninstall ota-lith in background."
            anchors{
                top: configBubbleButton2.bottom
                left: parent.left
                topMargin: mainw.width/180
                leftMargin: 20
            }
        }
    }

        Rectangle{
            id:configBubble3
            width: mainw.width/4.8
            height: mainw.height/5.9
            radius: mainw.width/192
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{
                top: infoDocker.bottom
                left: parent.left
                topMargin: mainw.width/48
                leftMargin: mainw.width/19.2
            }

            Text{
                id:configBubbleTitle3
                font.pixelSize: mainw.width/83
                color: aString=="Dark" ? "white" : "black"
                text: "Install aktualizr"
                anchors{
                    top: parent.top
                    left: parent.left
                    topMargin: 7
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
                width: mainw.width/13
                height: mainw.height/24
                anchors{
                    top: configBubbleTitle3.bottom
                    left: parent.left
                    topMargin: mainw.width/125
                    leftMargin: 20
                }
                background: Rectangle{
                    color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                    radius:mainw.width/192
                }


                onClicked: {
                    str="doi"
                    curProcess=1
                    process1.start("scripts/install_akt_ota-cli.sh",["-a"])
                  //  timerbut.running=true

                }
            }

            Text{
                id:configBubbleText3
                font.pixelSize: mainw.width/83
                color: aString=="Dark" ? "white" : "black"
                text: "Third press the button to \ninstall aktualizr in background."
                anchors{
                    top: configBubbleButton3.bottom
                    left: parent.left
                    topMargin: mainw.width/180
                    leftMargin: 20
                }
            }}






            Rectangle{
                id:configBubble4
                width: mainw.width/4.8
                height: mainw.height/5.9
                radius: mainw.width/192
                color: aString=="Dark" ? "darkgray" : " lightgray"
                anchors{
                    top: infoDocker.bottom
                    left: configBubble3.right
                    topMargin: mainw.width/48
                    leftMargin: mainw.width/19.2
                }

                Text{
                    id:configBubbleTitle4
                    font.pixelSize: mainw.width/83
                    color: aString=="Dark" ? "white" : "black"
                    text: "Install ota-cli"
                    anchors{
                        top: parent.top
                        left: parent.left
                        topMargin: 7
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
                    width: mainw.width/13
                    height: mainw.height/24
                    anchors{
                        top: configBubbleTitle4.bottom
                        left: parent.left
                        topMargin: mainw.width/125
                        leftMargin: 20
                    }
                    background: Rectangle{
                        color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                        radius:mainw.width/192
                    }
                    onClicked: {
                        str="doi"
                        curProcess=1
                        process1.start("scripts/install_akt_ota-cli.sh",["-o"])
                    }
                }

                Text{
                    id:configBubbleText4
                    font.pixelSize: mainw.width/83
                    color: aString=="Dark" ? "white" : "black"
                    text: "Fourth press the button to \ninstall ota-cli in background"
                    anchors{
                        top: configBubbleButton4.bottom
                        left: parent.left
                        topMargin: mainw.width/180
                        leftMargin: 20
                    }
                }


}





            Rectangle{
                id:infoDocker
                height: mainw.width/9.6+(mainw.width-960)/960*115
                radius: mainw.width/192
                color: aString=="Dark" ? "darkgray" : " lightgray"
                anchors{
                    top: configBubble1.bottom
                    left: parent.left
                    right: configBubble2.right
                    topMargin: mainw.width/48
                    leftMargin: mainw.width/19.2

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
                        color: lightDocker=="stop"? "red" : "green"
                    }
                }
                Text{
                    id:dockerText
                    font.pixelSize: mainw.width/80
                    color: aString=="Dark" ? "white" : "black"
                    text: "Configure Docker"
                    font.bold: true
                    anchors{
                        top: parent.top
                        left: parent.left
                        topMargin: mainw.width/96
                        leftMargin: mainw.width/45
                    }


                }
                Text{
                    id:configText
                    font.pixelSize: mainw.width/96+(mainw.width-960)/960*5
                    color: aString=="Dark" ? "white" : "black"
                    text:
    "   Insert in the terminal the follow commands:
        -sudo usermod -aG docker ${USER}
        -sudo groupadd docker
        -sbt docker:publishLocal
        -sudo chown $USER /var/run/docker.sock"

                    anchors{
                        top: dockerText.bottom
                        left: parent.left
                        topMargin: mainw.width/120
                        leftMargin: 20
                    }

                }

                RoundButton{
                    id:configBubbleDocker
                    radius: mainw.width/192
                    width: mainw.width/16
                    height: mainw.height/28
                    anchors{
                        right: parent.right
                        verticalCenter: parent.verticalCenter
                        rightMargin: 20
                    }
                    background: Rectangle{
                        color: parent.hovered ? "gray" : (aString=="Dark" ? "#83898d" : "#83898d")
                        radius:mainw.width/192
                    }
                    onClicked: {
                        curProcess=6
                        process6.start("scripts/docker.sh",["-r"])
                        process9.start("scripts/isDockerRunning.sh",[""])
                    }




}

}




        /*Rectangle{
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
                text:
"Instert in the terminal the follow commands:
sudo usermod -aG docker ${USER}
sudo groupadd docker
sbt docker:publishLocal
sudo chown $USER /var/run/docker.sock"

                anchors{
                    top: parent.top
                    left: parent.left
                    topMargin: mainw.width/96
                    leftMargin: 20
                }

            }


    }*/
        Rectangle{
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{

                top: infoDocker.bottom
                bottom: configBubble3.top
                topMargin: 0
                bottomMargin: 0
                horizontalCenter: configBubble3.horizontalCenter


            }
            width: mainw.width/200
        }

        Rectangle{
            color: aString=="Dark" ? "darkgray" : " lightgray"
            anchors{

                top: infoDocker.bottom
                bottom: configBubble4.top
                topMargin: 0
                bottomMargin: 0
                horizontalCenter: configBubble4.horizontalCenter


            }
            width: mainw.width/200
        }


}
