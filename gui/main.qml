import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5
import QtQml.Models 2.5
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Window {
    id:mainw
    visible: true
    width: 960
    height: 640
    minimumWidth: 960
    minimumHeight: 640
    title: qsTr("AGL")
    flags: Qt.Window | Qt.FramelessWindowHint
    property var darkThemeColor1: "black"
    property var darkThemeColor2: "#121212" //almost black
    property var darkThemeColor3: "#181818" //light black
    property var darkThemeColor4: "#404040" //gray
    property var darkThemeColor5: "#282828" //dark gray
    property var darkThemeColor6: "#FFFFFF" //white
    property var darkThemeColor7: "#B3B3B3" //light gray

    property var lightThemeColor1: "#A1E7FF" //blue
    property var lightThemeColor2: "#C2F6FF" //light blue
    property var lightThemeColor3: "#E5DEE0" //light gray
    property var lightThemeColor4: "#282828" //gray
    property var lightThemeColor5: "#FFFFFF" //white
    property var lightThemeColor6: "black"
    property var lightThemeColor7: "#181818" //almost black

    property var aString:"Dark"
    property var aType: "normal"


    function maxMinBtn(){
        sidebarCover.width = sidebarCover.width==80 ? 300 :80
        configText.visible= sidebarCover.width==80 ? false : true
        deviceText.visible= sidebarCover.width==80 ? false : true
        updateText.visible= sidebarCover.width==80 ? false : true
        helpText.visible= sidebarCover.width==80 ? false : true
    }

    Rectangle{
        id:content
        anchors.fill: parent
        color: aString=="Dark" ? "#1F2022" : "linen"

        ConfigWindow{
            id:configWindow
        }
        DeviceWindow{
            id:deviceWindow
        }
        HelpWindow{
            id:helpWindow
        }
        HomeWindow{
            id:homeWindow
        }
        UpdateWindow{
            id:updateWindow
        }

        Rectangle{
            id:bar
            height: 25
            anchors{
                left: parent.left
                top: parent.top
                right: parent.right
            }
            MouseArea{
                anchors.fill: parent
                property variant clickPos: "1,1"

                    onPressed: {
                        clickPos = Qt.point(mouse.x,mouse.y)
                    }

                    onPositionChanged: {
                        var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                        var new_x = mainw.x + delta.x
                        var new_y = mainw.y + delta.y
                        if (new_y <= 0)
                            mainw.visibility = Window.Maximized
                        else
                        {
                            if (mainw.visibility === Window.Maximized)
                                mainw.visibility = Window.Windowed
                            mainw.x = new_x
                            mainw.y = new_y
                        }
                    }
                cursorShape: Qt.DragMoveCursor
            }

            color: aString=="Dark" ? darkThemeColor1 : "rosybrown"

            CircleButtons{
                id:quitBtn
                background: Rectangle{
                    radius: 10
                    color: "red"
                }
                Rectangle{
                    anchors.centerIn: parent
                    width: 10
                    height: 2
                    rotation: 45
                    color: "white"
                }

                Rectangle{
                    anchors.centerIn: parent
                    width: 10
                    height: 2
                    rotation: -45
                    color: "white"
                }



                anchors{

                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin: 10
                }
                onClicked: mainw.close()
            }

            CircleButtons{
                id:fullScreenBtn
                background: Rectangle{
                    radius: 10
                    color: "#DBA800"
                }

                Rectangle{
                    width: 8
                    height: 8
                    anchors.centerIn: parent
                    color: "transparent"
                    border.color: "white"
                    border.width: 2

                }



                anchors{

                    right: quitBtn.left
                    verticalCenter: parent.verticalCenter
                    rightMargin: 10
                }
                onClicked: {

                    if(aType=="normal"){
                              aType="full"
                        mainw.showFullScreen()

                     }
                    else  {
                        aType="normal"
                        mainw.showNormal()
                    }
                }

            }

            CircleButtons{
                id:minimizeBtn
                background: Rectangle{
                    radius: 10
                    color: "green"
                }

                Rectangle{
                    width: 10
                    height: 2
                    anchors.centerIn: parent
                    color: "white"
                }

                anchors{
                    right: fullScreenBtn.left
                    verticalCenter: parent.verticalCenter
                    rightMargin: 10
                }
                onClicked: mainw.showMinimized()
            }



            CircleButtons{
                id:switchThemeBtn
                anchors{

                    right: minimizeBtn.left
                    verticalCenter: parent.verticalCenter
                    rightMargin: 60

                }
                background: Rectangle{
                    radius: 10
                    color: "transparent"
                    Image {
                        id: themeicon
                        anchors.fill: parent
                        source: aString=="Dark" ? "Icon/sunny.png" : "Icon/half-moon.png"
                    }

                }
                onClicked: {
                    aString = aString=="Dark"  ? "Light" : "Dark"
                }
            }
        }


    Rectangle{
        id:sidebarCover
        anchors{
            left:parent.left
            top:bar.bottom
            bottom:parent.bottom
            leftMargin: 20
            topMargin: 10
            bottomMargin: 20
        }

        width: 80
        radius:10
        color: "transparent"


        Rectangle{
            id:sidebar
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
                right:parent.right
                leftMargin:10
                rightMargin:10
                topMargin:10

            }


            Rectangle{
                id:progressbar
                border.width: 2
                border.color: "white"
                radius: 5
                anchors{
                    top:updatebtn.bottom
                    bottom: helpbtn.top
                    right: parent.right
                    left:parent.left
                    leftMargin: sidebarCover.width==80 ? 15 : 100
                    rightMargin: sidebarCover.width==80 ? 15 : 100

                    topMargin: 50
                    bottomMargin: 50

                }
                color:"transparent"
                ProgressBar{
                    anchors.fill: parent
                }
            }
            Rectangle{
                id:varfbaterie
                border.width: 2
                border.color: "white"
                radius:2
                //width:10
                height:7
                anchors{
                    bottom: progressbar.top
                    right: parent.right
                    left:parent.left
                    leftMargin: sidebarCover.width==80 ? 22 : 120
                    rightMargin: sidebarCover.width==80 ? 22 : 120
                    bottomMargin: -2
                }
            }

            width: 70
            radius:10
            color: aString=="Dark" ? darkThemeColor1 : "rosybrown"

            SideButton{
                id: configbtn
                anchors{
                    right: parent.right
                    left: parent.left
                    top: parent.top
                    topMargin: 90
                }

                Rectangle{
                    anchors{
                        top: parent.top
                        bottom: parent.bottom
                        right: parent.right
                        left: parent.left
                        leftMargin: 70

                    }
                    color: "transparent"
                    TextSideBtn{
                        id:configText
                        text: "Config"
                        anchors.centerIn: parent
                    }
                }
                Rectangle{
                    width: 40
                    height: 40
                    color: "transparent"
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                        leftMargin: 5
                        topMargin: 5

                    }
                }
                Item{
                    width: 35
                    height:35
                    anchors{
                        left: parent.left
                       // top: parent.top
                        //topMargin: 20
                        leftMargin: 15
                        verticalCenter: parent.verticalCenter
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
                    onClicked:{
                                   homeWindow.visible = false
                                   configWindow.visible = true
                                   deviceWindow.visible = false
                                   updateWindow.visible = false
                                   helpWindow.visible = false

                               }
            }

            SideButton
            {

                id: devicebtn
                anchors{
                    right: parent.right
                    left: parent.left
                    top: configbtn.bottom

                    topMargin: 2

                }

                Rectangle{
                    width: 46
                    height: 46
                    color: "transparent"
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom

                    }
                    Item{
                        width: 35
                        height:35
                        anchors{
                            left: parent.left
                           // top: parent.top
                            //topMargin: 20
                            leftMargin: 15
                            verticalCenter: parent.verticalCenter
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
                }
                Rectangle{
                    anchors{
                        top: parent.top
                        bottom: parent.bottom
                        right: parent.right
                        left: parent.left
                        leftMargin: 70

                    }
                    color: "transparent"
                    TextSideBtn{
                        id:deviceText
                        text: "Device"
                        anchors.centerIn: parent
                    }
                }

                    onClicked:{
                                   homeWindow.visible = false
                                   configWindow.visible = false
                                   deviceWindow.visible = true
                                   updateWindow.visible = false
                                   helpWindow.visible = false

                               }
            }
            SideButton
            {
                id: updatebtn
                anchors{
                    right: parent.right
                    left: parent.left
                    top: devicebtn.bottom

                    topMargin: 2
                }
                Rectangle{
                    width: 46
                    height: 46
                    color: "transparent"
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom

                    }
                    Item{
                        width: 35
                        height:35
                        anchors{
                            left: parent.left
                            leftMargin: 15
                            verticalCenter: parent.verticalCenter
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
                }

                Rectangle{
                    anchors{
                        top: parent.top
                        bottom: parent.bottom
                        right: parent.right
                        left: parent.left
                        leftMargin: 70

                    }
                    color: "transparent"
                    TextSideBtn{
                        id:updateText
                        text: "Update"
                        anchors.centerIn: parent
                    }
                }

                    onClicked:{
                                   homeWindow.visible = false
                                   configWindow.visible = false
                                   deviceWindow.visible = false
                                   updateWindow.visible = true
                                   helpWindow.visible = false

                               }
            }

            SideButton{
                id: helpbtn
                anchors{
                    right: parent.right
                    left: parent.left
                    bottom: parent.bottom

                    bottomMargin: 10
                }
                Rectangle{
                    anchors{
                        top: parent.top
                        bottom: parent.bottom
                        right: parent.right
                        left: parent.left
                        leftMargin: 70

                    }


                    color: "transparent"
                    TextSideBtn{
                        id:helpText
                        text: "Help"
                        anchors.centerIn: parent
                    }
                }
                Item{
                    width: 35
                    height:35
                    anchors{
                        left: parent.left
                       // top: parent.top
                        //topMargin: 20
                        leftMargin: 15
                        verticalCenter: parent.verticalCenter
                    }

                    Image {
                    id: helpicon
                    anchors.fill: parent
                    source: "Icon/help-circle.png"
                  //  color: "white"
                    }
                    ColorOverlay{
                    anchors.fill: helpicon
                    source: helpicon
                    color: aString == "Dark" ? "white" : "black"
                    }
                }

                    onClicked:{
                                   homeWindow.visible = false
                                   configWindow.visible = false
                                   deviceWindow.visible = false
                                   updateWindow.visible = false
                                   helpWindow.visible = true

                               }
            }

        }
        CircleButtons{
            id:menubtn
            anchors{
                right: parent.right

                top: parent.top
                topMargin: 70

            }
            Rectangle{
                id:line1
                color: "black"
                height:2
                width: 10
                anchors{
                    right: parent.right
                    top: parent.top
                    rightMargin: 4
                    topMargin: 6
                }
                rotation: 45

            }
            Rectangle{
                id:line2
                color: aString=="Dark"? "black" : "white"
                height:2
                width: 10
                anchors{
                    right: parent.right
                    bottom:  parent.bottom
                    rightMargin: 4
                    bottomMargin: 6
                }
                rotation: -45

            }

            onClicked: {
                maxMinBtn()
                if(sidebarCover.width==80){
                    line2.anchors.left = undefined
                    line2.anchors.right = menubtn.right
                    line2.anchors.rightMargin= 4
                    line2.rotation = -45

                    line1.anchors.left = undefined
                    line1.anchors.right = menubtn.right
                    line1.anchors.rightMargin= 4
                    line1.rotation = 45
                }
                else{
                    line2.anchors.right = undefined
                    line2.anchors.left = menubtn.left
                    line2.anchors.leftMargin= 4
                    line2.rotation = 45

                    line1.anchors.right = undefined
                    line1.anchors.left = menubtn.left
                    line1.anchors.leftMargin= 4
                    line1.rotation = -45


                }
            }
        }
    }






            //color: aString=="Dark" ? "#1F2022" : "blue"

        Rectangle{
            id:statusbar
            color:  "lightgray"
            anchors{
                bottom: parent.bottom
                left: sidebarCover.right
                right: parent.right
                leftMargin: 20
                rightMargin: 20
                bottomMargin: 20
            }
            height:100
            radius:10
            Rectangle{
                id:titlebar
                anchors{
                    top: parent.top
                    left: parent.left
                    right: parent.right
                }
                height: 20
                color: aString=="Dark" ? "#132f4d" : "#A49393"
            }

            Label{

                anchors{
                bottom: parent.bottom
                left: parent.left
                right: parent.right
                top: titlebar.bottom
                }
                //top: titlebar.bottom
            }
        }



    }
}
