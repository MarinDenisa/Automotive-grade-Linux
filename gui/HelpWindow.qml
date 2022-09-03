import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5


WindowType{

    Text{
        text: "<b>Installation guite AGL</b>"
        font{
            pixelSize: 24
            family: "arial black"
        }
        color: aString=="Dark" ? "white" : "black"
        anchors.fill: parent
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 30
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


