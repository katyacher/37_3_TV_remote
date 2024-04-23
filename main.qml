import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    id: win
    width: 240
    height: 680
    visible: true
    title: qsTr("Hello World")
    color:"#000000"

    GridLayout{
        id: grid
        rows: 8
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
           onClicked: {current_channel.text = "Channel: 0";}

        }

        RoundButton{
           id: one
           Layout.topMargin: 20
           ButtonGroup.group: btnGroup
           text: "1"
           onClicked: {current_channel.text = "Channel: 1";}

        }
        RoundButton{
           id: two
            Layout.topMargin: 20
           ButtonGroup.group: btnGroup
           text: "2"
           onClicked: {current_channel.text = "Channel: 2";}

        }
        RoundButton{
           id: three
           Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "3"
           onClicked: {current_channel.text = "Channel: 3";}

        }
        RoundButton{
           id: four
           ButtonGroup.group: btnGroup
           text: "4"
           onClicked: {current_channel.text = "Channel: 4";}

        }
        RoundButton{
           id: five
           ButtonGroup.group: btnGroup
           text: "5"
           onClicked: {current_channel.text = "Channel: 5";}

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
           onClicked: {current_channel.text = "Channel: 7";}

        }
        RoundButton{
           id: eight
           ButtonGroup.group: btnGroup
           text: "8"
           onClicked: {current_channel.text = "Channel: 8";}

        }

        RoundButton{
           id: redBtn
           ButtonGroup.group: btnGroup
           Layout.leftMargin: 30

            background: Rectangle{
                width: 40
                height: 20

                radius: 50
                color: "red"
             }

        }

        RoundButton{
           id: nine

           ButtonGroup.group: btnGroup
           text: "9"
           onClicked: {current_channel.text = "Channel: 9";}

        }

        RoundButton{
           id: greenBtn
           ButtonGroup.group: btnGroup
           background: Rectangle{
               width: 40
               height: 20

               radius: 50
               color: "green"
            }


        }

        Button{
            id: channel_inc
            ButtonGroup.group: btnGroup
            Layout.columnSpan: 2
            //Layout.fillWidth: true
            Layout.leftMargin: 30
            text: "Ch+"
            implicitWidth: 50
            implicitHeight: 60


        }

        Button{
           id: volume_inc
           ButtonGroup.group: btnGroup
           Layout.columnSpan: 1
           // Layout.fillWidth: true
           // Layout.leftMargin: 30
            text: "Vol+"
            implicitWidth: 50
            implicitHeight: 60

        }

        Button{
            id: channel_dec
            ButtonGroup.group: btnGroup
            Layout.columnSpan: 2
            //Layout.fillWidth: true
            Layout.leftMargin: 30
            implicitWidth: 50
            implicitHeight: 60

            text: "Ch-"


        }

        Button{
            id: volume_dec
            ButtonGroup.group: btnGroup
            Layout.columnSpan: 1
          //  Layout.fillWidth: true
           // Layout.leftMargin: 30
            implicitWidth: 50
            implicitHeight: 60

            text: "Vol-"

        }



        Rectangle {
            id: status_bar
            width: 200
            height: 120
            color: "#1a60ed"
            Layout.leftMargin: 20

            Layout.columnSpan: 3

            Text {
                id: current_channel
                text: "Channel: "
                color: "#ffffff"
                y: 20
                anchors.left: status_bar.left
                Layout.leftMargin: 10
                font.pointSize: 14
                font.bold: true
            }
            Text {
                id: current_volume
                text: "Volume:"
                color: "#ffffff"
                y: 70
               // anchors.horizontalCenter: status_bar.horizontalCenter
                anchors.left: status_bar.left
                Layout.leftMargin: 10
                anchors.verticalCenterOffset: 60
                font.pointSize: 14
                font.bold: true
            }
        }
    }

}
