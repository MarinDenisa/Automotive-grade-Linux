import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5


Rectangle {
        anchors.fill: parent

        color: aString=="Dark" ? "#1F2022" :    "linen"



        Image{
            id: background

            source: aString == "Dark" ? "Icon/Dark-1.png" : "Icon/Light-1.png"
            anchors.fill: parent
            Text{
                id:homeText1
                text:
"Welcome to
      Automotive Grade Linux"
                font.pixelSize: mainw.width/25
                color: aString=="Dark" ? "white": " black"
                font.bold: true
                anchors {
                    top:parent.top
                    left:parent.left
                    right:parent.right
                    topMargin: mainw.height/6.5
                    leftMargin:sidebarCover.width==80 ? mainw.width/(6.4*mainw.width/960)+(mainw.width-960)/960*50 : mainw.width/(2.6*mainw.width/960)+(mainw.width-960)/960*50
                }}
                Text{
                    id:homeText2
                    text:"Automotive Grade Linux is a collaborative open source project that is bringing together automakers,
                        \nsuppliers and technology companies to accelerate the development and adoption of a fully open software stack
                          \nfor the connected car. With Linux at its core, AGL is developing an open platform from the ground up
                          \nthat can serve as the de facto industry standard to enable rapid development of new features and technologies."
                    font.pixelSize: mainw.width/65
                    wrapMode: Text.WordWrap
                    font.bold: true
                    color: aString == "Dark" ? "white": " black"
                    anchors {
                        top:parent.top
                        left:parent.left
                        right:parent.right
                        topMargin: mainw.height/2.2
                        leftMargin:sidebarCover.width==80 ? mainw.width/(6.4*mainw.width/960)+(mainw.width-960)/960*50 : mainw.width/(2.6*mainw.width/960)+(mainw.width-960)/960*50
                    }

                visible: true
            }}

        }
