import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5


Text{
    visible: false
    color: aString=="Dark" ? "white" : "black"
    font{
        pixelSize: 24
        family: "arial black"
    }
    anchors{
        right: parent.right
        rightMargin: 60
        verticalCenter: parent.verticalCenter
    }
}
