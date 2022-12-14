import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5
import QtQml.Models 2.5
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import Process 1.0
import QtQuick.Controls 2.3
import QtQuick 2.10

Window {
    id:mainw
    visible: true
    width: 960
    height: 540
    minimumWidth: 960
    minimumHeight: 540
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
    property var str: "doi"
    property var x:""
    property var y:""
    property var z:""
    property var w:0
    property var light1: x=="" ? "stop" : "run"
    property var light2: y=="" ? "stop" : "run"
    property var light4: z=="" ? "stop" : "run"
    property var light3: w==0 ? "run" : "stop"
    property var lightAktualizr: aktualizrRunning=="" ? "stop" : "run"
    property var lightDocker: dockerRunning=="" ? "stop" : "run"
    property var lbar: 1000
    property var dplusf: ""
    property var copydev: ""
    property var contor:0
    property var curProcess: 0
    property var dockerRunning: ""
    property var aktualizrRunning: ""
    property var dirPath: qsTr(CurDirPath).slice(0,qsTr(CurDirPath).lastIndexOf("/"))
    property var dirPath2: qsTr(dirPath).slice(0,qsTr(dirPath).lastIndexOf("/"))
    property string dirPathC: dirPath2+"/ota-lith/ota-ce-gen/devices"
    property var locale: Qt.locale()
    property date currentDate: new Date()
    property string dateString

    property int previousX: 0
    property var previousX1:0
    property var previousY: 0

    MouseArea{
        id:rightResize
        width: 8
        anchors{
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            rightMargin: 0
            topMargin: 8
            bottomMargin: 8

        }
        cursorShape: Qt.SizeHorCursor
        onPressed: previousX = mouseX

        onMouseXChanged: {
            var dx =  mouseX - previousX
            mainw.setWidth(parent.width + dx)
        }

    }

    /*MouseArea{
        id:leftResize
        width: 8
        anchors{
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        cursorShape: Qt.SizeHorCursor
        onPressed: previousX1 = mouseX

        onMouseXChanged: {
            var ral =  mouseX - previousX1
            //mainw.setX(mainw.x + ral)
            mainw.setWidth(parent.width - ral)
        }

    }*/

   /* MouseArea{
        id:diagresize
        width: 8
        height: 8
        anchors{
            bottom: parent.bottom
            right: parent.right
        }
        cursorShape: Qt.
    }*/


    MouseArea{
        id:bottomResize
        height: 8
        anchors{
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            bottomMargin: 0
            leftMargin: 8
            rightMargin: 8
        }
        cursorShape: Qt.SizeVerCursor
        onPressed: previousY = mouseY

        onMouseYChanged: {
            var dy =  mouseY - previousY
            //mainw.setY(mainw.y + dy)
            mainw.setHeight(parent.height + dy)
        }

    }

Rectangle{
    width:8
    height:8
    anchors{
        right: parent.right
        bottom: parent.bottom

    }

    MouseArea{
        id: bottomRightResize
        anchors.fill : parent
        property variant clickPos: "1.1"
        cursorShape: Qt.SizeFDiagCursor
        property var previousX2:0
        property var previousY2:0
        onPressed:
        {
             previousX2=mouseX
             previousY2=mouseY
        }

            onMouseXChanged: {
                var dx = mouseX-previousX2
                var dy = mouseY -  previousY2

                mainw.setWidth(mainw.width+dx)
                mainw.setHeight(mainw.height+dy)

            }
    }

}

    function basename(str)
    {
        return (str.slice(str.lastIndexOf("/")+1))
    }

    function rmExt(str)
    {
        return (str.slice(0,str.lastIndexOf(".")))
    }




    function fct(){
            if(configWindow.visible){
                configled.color=aString=="Dark" ? "lightblue" : "red"
                txt.text+="\nConfigWindow:\n"
            }
            else{
                configled.color=aString=="Dark" ? "#132f4d" : "#A49393"
            }

            if(deviceWindow.visible){
                deviceled.color=aString=="Dark" ? "lightblue" : "red"
                txt.text+="\nDeviceWindow:\n"
            }
            else{
                deviceled.color=aString=="Dark" ? "#132f4d" : "#A49393"
            }
            if(updateWindow.visible){
                updateled.color=aString=="Dark" ? "lightblue" : "red"
                txt.text+="\nUpdateWindow:\n"
            }
            else{
                updateled.color=aString=="Dark" ? "#132f4d" : "#A49393"
            }
            if(helpWindow.visible){
                helpled.color=aString=="Dark" ? "lightblue" : "red"
                txt.text+="\nHelpWindow:\n"
            }
            else{
                helpled.color=aString=="Dark" ? "#132f4d" : "#A49393"
            }
        }

    function maxMinBtn(){
        sidebarCover.width = sidebarCover.width==80 ? 300 :80
        configText.visible= sidebarCover.width==80 ? false : true
        deviceText.visible= sidebarCover.width==80 ? false : true
        updateText.visible= sidebarCover.width==80 ? false : true
        helpText.visible= sidebarCover.width==80 ? false : true
        console.log(dirPathC)
    }

    Process {
        id: process2

        property string outp: ""


        onStarted: print("Started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            outp = process2.readAll()
            x=outp
        }
    }

    Process {
        id: process5

        property string outp: ""


        onStarted: print("Started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            outp = process5.readAll()
            w=outp
        }
    }

    Process {
        id: process4

        property string outp: ""


        onStarted: print("Started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            outp = process4.readAll()
            z=outp
        }
    }

    Process {
        id: process3

        property string outp: ""


        onStarted: print("Started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            outp = process3.readAll()
            y=outp
        }
    }
    Process {
        id: process8

        property string outp: ""


        onStarted: print("Started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            outp = process8.readAll()
            y=outp
        }
    }


    function verifyInstalls(){
        process2.start("scripts/existd.sh",[" "])
        process3.start("scripts/existcli.sh",[" "])
        process4.start("../existakt.sh",[" "])
        process5.start("scripts/installex.sh",[" "])
        process9.start("scripts/isDockerRunning.sh",[""])
        process10.start("scripts/isAktualizrRunning.sh",[""])
    }

    Component.onCompleted: {
        console.log(CurDirPath)
        verifyInstalls()
}

    Timer{
        id: timerbut
        running: false
        repeat: true
        interval: 2000
        onTriggered:{
            if(lbar>1.5)
            {
                lbar=lbar-0.2
            }

            //console.log(lbar)
        }


    }

    function stopDc(){
        if(contor==14){
            mainw.close()
        }
    }

    Timer{
        id:timi
        interval: 500
        running: false
        repeat: true
        onTriggered:{
            contor=contor+1
            stopDc()

        }
    }


    Process {
        id: process1

        property string output: ""


        onStarted:{
            lbar=5

            print("Started")
            timerbut.running = true
        }
        onFinished:{
            lbar=1
            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            output = process1.readAll()
            txt.text += output
        }
    }

    Process {
        id: process6

        property string output: ""


        onStarted:{
            lbar=5

            print("Started")
            timerbut.running = true
        }
        onFinished:{
            lbar=1
            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            output = process6.readAll()
            txt.text += output
        }
    }
    Process {
        id: process7

        property string output: ""


        onStarted:{
            lbar=5

            print("Started")
            timerbut.running = true
        }
        onFinished:{
            lbar=1
            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            output = process7.readAll()
            txt.text += output
        }
    }

    Process {
        id: process9

        property string output: ""


        onStarted:{
            print("Started")
        }
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            output = process9.readAll()
            dockerRunning = output
        }
    }

    Process {
        id: process10

        property string outp: ""


        onStarted: print("Started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            outp = process10.readAll()
            aktualizrRunning=outp
        }
    }

    /*MessageDialog{
        id:dockerStopping
        title: "Docker"
        text: "Docker is stopping..."
        informativeText: "Please wait!"
    }*/
    
    
    

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


                onClicked: {
                    if(lightDocker!=="stop" && lightAktualizr!=="stop")
                    {
                        process7.start("scripts/aktualizr.sh",["-s"])
                        process8.start("scripts/docker.sh",["-s"])
                        timi.running=true
                        dockerStopping.visible=true

                    }
                    else if(lightDocker!=="stop" && lightAktualizr=="stop"){
                        process8.start("scripts/docker.sh",["-s"])
                        timi.running=true
                        dockerStopping.visible=true
                    }
                    else if(lightDocker=="stop" && lightAktualizr!=="stop")
                    {
                        process7.start("scripts/aktualizr.sh",["-s"])
                        mainw.close()
                    }
                    else
                    {
                        mainw.close()             
                    }


                    //mainw.close()
                }
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
                    fct()
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

                    topMargin: 30
                    bottomMargin: 30

                }
                color:"green"
                ProgressBar{
                    rotation: 180
                    anchors.centerIn: parent
                    background: Rectangle {
                           implicitWidth: progressbar.width
                           implicitHeight: progressbar.height
                           color: "white"
                           radius: 3
                       }
                    contentItem: Item
                    {
                            implicitWidth: progressbar.width
                            implicitHeight: progressbar.height

                            Rectangle {
                                width: progressbar.width
                                height: progressbar.height/lbar
                                radius: 2
                                color: "green"
                            }
                        }
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
                    id:configled
                    width: 8
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                        topMargin: 10
                        bottomMargin: 10
                    }
                    color: aString=="Dark" ? "#132f4d" : "#A49393"
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
                        fct()
                       // verifyInstalls()

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
                    id:deviceled
                    width: 8
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                        topMargin: 10
                        bottomMargin: 10
                    }
                    color: aString=="Dark" ? "#132f4d" : "#A49393"
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
                        fct()

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
                    id:updateled
                    width: 8
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                        topMargin: 10
                        bottomMargin: 10
                    }
                    color: aString=="Dark" ? "#132f4d" : "#A49393"
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
                        fct()

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
                    id:helpled
                    width: 8
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                        topMargin: 10
                        bottomMargin: 10
                    }
                    color: aString=="Dark" ? "#132f4d" : "#A49393"
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
                        fct()

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
                leftMargin: mainw.width/19.2
                rightMargin: 20
                bottomMargin: 20
            }
            height:mainw.width/19.2
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
                id:label
                anchors{
                bottom: parent.bottom
                left: parent.left
                right: parent.right
                top: titlebar.bottom
                }
                ScrollView {
                    id: scrollView

                    clip: true
                    anchors{
                        left: parent.left
                        right: stopprocess.left
                        top: parent.top
                        bottom: parent.bottom
                    }

                    ScrollBar {
                            id: vbar
                            hoverEnabled: true
                            active: hovered || pressed
                            orientation: Qt.Vertical
                            size: label.height / 4
                            anchors.top: parent.top
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                        }

                    TextArea {
                        id: txt


                        readOnly:           true
                        textFormat:         TextEdit.RichText

                        text:  ""
                        width: parent.width
                        height: parent.height

                        anchors.fill: parent
                        function append()
                        {

                            txt.cursorPosition = txt.length-1
                        }
                    }

                    Timer {
                         running: true
                         interval: 50
                         repeat: true
                         property int iteration: 0

                         onTriggered:{
                             if(str=="doi"){
                                 txt.append()
                                 txt.append()
                             }
                          }
                     }



                //top: titlebar.bottom
                }
                RoundButton{
                    id:stopprocess
                    radius: 3
                    width: 60
                    height:20
                    background: Rectangle{
                        border.width: 2
                        border.color: "lightgray"
                        radius: 3
                        color: parent.hovered ? "gray" : (aString=="Dark" ? "white" : "black")
                    }
                    Text{
                        text:"Stop"
                        font.pixelSize: 16
                        color: aString=="Dark" ? "black" : "white"
                        anchors.centerIn: parent
                    }
                    anchors{
                        right: parent.right
                        bottom: parent.bottom
                        rightMargin: 20
                        bottomMargin: 10
                    }
                    onClicked:{
                        switch(curProcess){
                        case 1:
                            process1.kill()
                            break
                        case 6:
                            process6.kill()
                            break
                        case 7:
                            process7.start("scripts/aktualizr.sh",["-s "])
                            process7.kill()
                            break
                        }
                        txt.text += "\nProcess "+curProcess+" stopped."
                    }
                }
            }
        }



    }
    Rectangle{
        id:dockerStopping
        visible:false
        width: 240
        height: 160
        border.width: 5
        border.color: "black"
        anchors.centerIn: parent
        Text{
            id:title
            anchors{

                top: parent.top
                topMargin: 10
                horizontalCenter: parent.horizontalCenter
            }
            font.pixelSize: 20
            text:"Docker"

        }

        Text{
            id:text
            anchors{

                top: title.bottom
                topMargin: 20
                horizontalCenter: parent.horizontalCenter
            }
            font.pixelSize: 15
            text:"Docker is stopping..."

        }
        Text{
            id:infotext
            anchors{

                top: text.bottom
                topMargin: 20
                horizontalCenter: parent.horizontalCenter
            }
            font.pixelSize: 15
            text:"Please wait!"

        }
    }
}
