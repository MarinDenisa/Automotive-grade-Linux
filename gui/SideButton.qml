import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5


// A custom button for the sidebar

Button{


    width: 70
    height: 70


    background: Rectangle{
        color: parent.hovered ? "lightgray" : "transparent"
        Rectangle{
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
    }



}
