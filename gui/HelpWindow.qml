import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5
import QtGraphicalEffects 1.0

WindowType{




    Rectangle{
        id:homeBubbleConfig
        width: helpWindow.width/3.7
        height: helpWindow.height/4.5
        radius: helpWindow.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: parent.top
            left: parent.left
            bottom: parent.bottom
            bottomMargin:40

            leftMargin: mainw.width/19.2
            topMargin: helpWindow.height/27

        }

        Text{
            id: configTitle1
            text: "Configure"
            font{
                pixelSize: mainw.width/35
                family: "arial black"
            }
            anchors{
                top: parent.top
               horizontalCenter: parent.horizontalCenter
                topMargin: 50

        }
            color: aString == "Dark" ? "white" : "black"

    }
        Item{
            width: 35
            height:35
            anchors{
         bottom: configTitle1.top
         bottomMargin: 5
         top: parent.top
         topMargin: 10
         horizontalCenter: parent.horizontalCenter
            }

            Image {
            id: configicon
            anchors.fill: parent
            source: "Icon/tool.png"
          //  color: "white"
            }
            ColorOverlay{
            anchors.fill: configicon
            source: configicon
            color: aString == "Dark" ? "white" : "black"
            }
        }

        Text{
            id: configText1
            text: "-> Installing the resources and ota-lith comes first. Press the highlighted button, then wait for the red circle to turn green."
            anchors{
                top: configTitle1.bottom
                topMargin: 20
               right: parent.right
               left: parent.left
               rightMargin: 5
               leftMargin: 5
            }
            wrapMode: Text.WordWrap
            font{
                pixelSize: mainw.height/40
                family: "arial black"
            }
            color: aString == "Dark" ? "white" : "black"

        }
        Text{
            id: configText2
            text:   "-> The second step is to install Docker. To accomplish this, enter the five instructions indicated in the middle bubble into the terminal. After that, press the button to the right to complete the installation."
            anchors{
                top: configText1.bottom
                topMargin: 10
                right: parent.right
                left: parent.left
                rightMargin: 5
                leftMargin: 5
            }
             wrapMode: Text.WordWrap
             font{
                 pixelSize: mainw.height/40
                 family: "arial black"
             }
             color: aString == "Dark" ? "white" : "black"

        }
        Text{
            id: cofingText3
            text:"-> Installing the aktualizr and ota-cli comes as the third step. As with the first, wait until the circle turns green."
            anchors{
                top: configText2.bottom
                topMargin: 10
                right: parent.right
                left: parent.left
                rightMargin: 5
                leftMargin: 5
            }
             wrapMode: Text.WordWrap
             font{
                 pixelSize: mainw.height/40
                 family: "arial black"
             }
             color: aString == "Dark" ? "white" : "black"
        }
}
    Rectangle{
        id:homeBubbleDevice
        width: helpWindow.width/3.7
        height: helpWindow.height/4.5
        radius: helpWindow.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: parent.top
            left: homeBubbleConfig.right
            bottom: parent.bottom
            bottomMargin: 40

            leftMargin: helpWindow.width/20.25
            topMargin: helpWindow.height/27

        }

        Text{
            id: deviceTitle1
            text: "Device"
            font{
                pixelSize:  mainw.width/35
                family: "arial black"
            }
            anchors{
                top: parent.top
               horizontalCenter: parent.horizontalCenter
                topMargin: 50
            }
            color: aString == "Dark" ? "white" : "black"

            }
        Item{
            width: 35
            height:35
            anchors{
         bottom: deviceTitle1.top
         bottomMargin: 5
         top: parent.top
         topMargin: 10
         horizontalCenter: parent.horizontalCenter
            }

            Image {
            id: deviceicon
            anchors.fill: parent
            source: "Icon/monitor.png"
          //  color: "white"
            }
            ColorOverlay{
            anchors.fill: deviceicon
            source: deviceicon
            color: aString == "Dark" ? "white" : "black"
            }
        }

        Text{
            id: deviceText1
            text: "-> You can establish a virtual device that will receive the update in the device tab by going to the path: ... "
            anchors{
                top: deviceTitle1.bottom
                topMargin: 20
               right: parent.right
               left: parent.left
               rightMargin: 5
               leftMargin: 5
            }
            wrapMode: Text.WordWrap
            font{
                pixelSize: mainw.height/40
                family: "arial black"
            }
            color: aString == "Dark" ? "white" : "black"

        }
        Text{
            id: deviceText2
            text:   "-> You can choose a file with .csr extension by going into the path: ...  after creating the virtual device."
            anchors{
                top: deviceText1.bottom
                topMargin: 10
                right: parent.right
                left: parent.left
                rightMargin: 5
                leftMargin: 5
            }
             wrapMode: Text.WordWrap
             font{
                 pixelSize: mainw.height/40
                 family: "arial black"
             }
             color: aString == "Dark" ? "white" : "black"

        }
        Text{
            id: deviceText3
            text:"-> The device that will receive the update should be included in the table below."
            anchors{
                top: deviceText2.bottom
                topMargin: 10
                right: parent.right
                left: parent.left
                rightMargin: 5
                leftMargin: 5
            }
             wrapMode: Text.WordWrap
             font{
                 pixelSize: mainw.height/40
                 family: "arial black"
             }
             color: aString == "Dark" ? "white" : "black"
        }
        }

    Rectangle{
        id:homeBubbleUpdate
        width: helpWindow.width/3.7
        height: helpWindow.height/4.5
        radius: helpWindow.width/192
        color: aString=="Dark" ? "darkgray" : " lightgray"
        anchors{
            top: parent.top
            left: homeBubbleDevice.right
            right: parent.right
            bottom: parent.bottom
            bottomMargin: 40
            rightMargin: 20

            leftMargin: helpWindow.width/20.25
            topMargin: helpWindow.height/27

        }

        Text{
            id: updateTitle1
            text: "Update"
            font{
                pixelSize:  mainw.width/35
                family: "arial black"
            }
            anchors{
                top: parent.top
               horizontalCenter: parent.horizontalCenter
                topMargin: 50
            }
            color: aString == "Dark" ? "white" : "black"

        }
        Item{
            width: mainw.height/20
            height: mainw.width/20
            anchors{
         bottom: updateTitle1.top
         bottomMargin: 5
         top: parent.top
         topMargin: 10
         horizontalCenter: parent.horizontalCenter
            }

            Image {
            id: updateicon
            anchors.fill: parent
            source: "Icon/refresh-cw.png"
          //  color: "white"
            }
            ColorOverlay{
            anchors.fill: updateicon
            source: updateicon
            color: aString == "Dark" ? "white" : "black"
            }
        }
        Label{
            anchors{
                left:parent.left
                bottom: parent.bottom
                right: parent.right
                top: updateTitle1.bottom
                topMargin: 20
            }
            id:lbl
            ScrollView{
                id:scrollHelp
                anchors.fill: parent
                clip:true



                TextArea{
                    id: upTxt1
                    text: "-> You must have both aktualizr and the docker open in order to start an update. By depressing the highlithed button located in the bubbles, you can open the. The red dot will become green after it's finished.\n
-> By hitting the button on the - Open a file - bubble after opening Docker and Aktualizr, you can choose the file you want to transfer to the device.\n-> The device that will receive the update and the name of the file that you have chosen are displayed on the right.\n
-> Pushing the file onto the device after selecting Update File completes the update."
                    anchors{
                        top: parent.top

                    }
                    wrapMode: Text.WordWrap
                    font{
                        pixelSize: mainw.height/40
                        family: "arial black"
                    }
                    color: aString == "Dark" ? "white" : "black"

                }
                ScrollBar {
                    id: vhelpbar
                    hoverEnabled: true
                    active: hovered || pressed
                    orientation: Qt.Vertical
                    size: parent.height
                    anchors.top: parent.top
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                }
            }
        }
    }
}

/*
    Text{
        text: "<b>Installation guite AGL</b>"
        font{
            pixelSize: 24
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"

        anchors{
           // centerIn: parent

            bottom:statusbar.top

            bottomMargin: helpWindow.height/3

           // rightMargin:
            rightMargin: helpWindow.width/19.2
        }
    }

    Text{
        text: "Configuration"
        font{
            pixelSize: 24
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 70
        }
    }
    Text{
        text: "1. Check that the version of the virtual machine is 20.04"
        font{
            pixelSize: 20
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 105
        }
    }
    Text{
        text: "1. Check that the version of the virtual machine is 20.04"
        font{
            pixelSize: 20
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 105
        }
    }

    Text{
        text: "2. Install resources"
        font{
            pixelSize: 20
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 130
        }
    }
    Text{
        text: "3. Create ota-lith"

        font{
            pixelSize: 20
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 155
        }
    }
    Text{
        text: "Device"
        font{
            pixelSize: 24
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 190
        }
    }
    Text{
        text: "1. Start docker"
        font{
            pixelSize: 20
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 225
            //fill: parent
        }
    }
    Text{
        text: "2. Install aktualizr"
        font{
            pixelSize: 20
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 250
        }
    }
    Text{
        text: "3. Install ota-cli"
        font{
            pixelSize: 20
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 275
        }
    }
    Text{
        text: "Update device"
        font{
            pixelSize: 24
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 310
        }
    }
        Text{
            text: "1. Start aktualizr."

            //anchors.fill: parent
            font{
                pixelSize: 20
                family: "arial black"
            }
            color: aString=="Dark" ? "white" : "black"
            anchors{
                left: parent.left
                top: parent.top
                topMargin: 345

            }
        }
        Text{
            text: "2. Create toml. You must upload a non-empty file."
            font{
                pixelSize: 20
                family: "arial black"
            }
            color: aString=="Dark" ? "white" : "black"
            anchors{
                left: parent.left
                top: parent.top
                topMargin: 370
            }
        }
        Text{
            text: "3. Update device. You must upload a file with the extension .toml."
            font{
                pixelSize: 20
                family: "arial black"
            }
            color: aString=="Dark" ? "white" : "black"

            anchors{
                left: parent.left
                top: parent.top
                topMargin: 395


            }
        }

    }
}
*/

