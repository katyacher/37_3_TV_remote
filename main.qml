import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 240
    height: 680
    visible: true
    title: qsTr("Hello World")
    color:"#000000"

    GridLayout{
        id: grid
        rows: 6
        columns:3
        columnSpacing: 30
        rowSpacing: 30



       // Layout.fillWidth: true

        ButtonGroup {
            id: btnGroup

        }

        RoundButton{
           id: zero
            Layout.topMargin: 20
            Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "0"
           onClicked: {status_ch.text = "Channel: 0";}

        }

        RoundButton{
           id: one
           Layout.topMargin: 20
           ButtonGroup.group: btnGroup
           text: "1"
           onClicked: {status_ch.text = "Channel: 1";}

        }
        RoundButton{
           id: two
            Layout.topMargin: 20
           ButtonGroup.group: btnGroup
           text: "2"
           onClicked: {status_ch.text = "Channel: 2";}

        }
        RoundButton{
           id: three
           Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "3"
           onClicked: {status_ch.text = "Channel: 3";}

        }
        RoundButton{
           id: four
           ButtonGroup.group: btnGroup
           text: "4"
           onClicked: {status_ch.text = "Channel: 4";}

        }
        RoundButton{
           id: five
           ButtonGroup.group: btnGroup
           text: "5"
           onClicked: {status_ch.text = "Channel: 5";}

        }
        RoundButton{
           id: six
           Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "6"
           onClicked: {status_ch.text = "Channel: 6";}

        }
        RoundButton{
           id: seven
           ButtonGroup.group: btnGroup
           text: "7"
           onClicked: {status_ch.text = "Channel: 7";}

        }
        RoundButton{
           id: eight
           ButtonGroup.group: btnGroup
           text: "8"
           onClicked: {status_ch.text = "Channel: 8";}

        }
        RoundButton{
           id: nine
           Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "9"
           onClicked: {status_ch.text = "Channel: 9";}

        }
        RoundButton{
           id: redBtn
           ButtonGroup.group: btnGroup
           //color:"red"
           onClicked: {status_ch.text = "Channel: ";}

        }
        RoundButton{
           id: greenBtn
           ButtonGroup.group: btnGroup
          // color: "green"
           onClicked: {status_ch.text = "Channel: ";}

        }
        TextArea{
            id: status_ch
            Layout.columnSpan: 3
            Layout.fillWidth: true
            Layout.leftMargin: 30
            color: "#ffffff"
            text: "Channel:"
        }

        TextArea{
            id: status_vl
            Layout.columnSpan: 3
            Layout.fillWidth: true
            Layout.leftMargin: 30
            color: "#ffffff"
            text: "Volume:"
        }

    }

}
