import QtQuick 2.2
import QtQuick.Controls 2.5
import QtQuick.Window 2.5


WindowType{
    Text{
        text: "here is help window"
        font.pixelSize: 20
        color: "blue"
        anchors.centerIn: parent
    }
    RoundButton{
        id:butonas
        width: 40
        height:40
        background: Rectangle{
            color: parent.down? "gray" : "red"
        }
        onClicked: {
            butonas.down = true
        }
    }


}