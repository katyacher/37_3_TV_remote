import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    id: win
    width: 240
    height: 680
    visible: true
    title: qsTr("TV remote")
    color:"#000000"

    function inc(id, param){
        if(id.text === ""){
            id.text = "0";
        } else {
            let num = Number(id.text);
            id.text =  String(num + param);

            if(Number(id.text) >= 100){
                id.text = "100";
            }
        }
    }

    function dec(id, param){
        id.text =  id.text - param;
        if(Number(id.text) <= 0){
            id.text = "0";
        }
    }


    GridLayout{
        id: grid
        rows: 8
        columns:3
        columnSpacing: 30
        rowSpacing: 30

        ButtonGroup {
            id: btnGroup

        }

        RoundButton{
           id: zero
            Layout.topMargin: 20
            Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "0"
           onClicked: {current_channel.text = "0";}

        }

        RoundButton{
           id: one
           Layout.topMargin: 20
           ButtonGroup.group: btnGroup
           text: "1"
           onClicked: {current_channel.text = "1";}

        }
        RoundButton{
           id: two
            Layout.topMargin: 20
           ButtonGroup.group: btnGroup
           text: "2"
           onClicked: {current_channel.text = "2";}

        }
        RoundButton{
           id: three
           Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "3"
           onClicked: {current_channel.text = "3";}

        }
        RoundButton{
           id: four
           ButtonGroup.group: btnGroup
           text: "4"
           onClicked: {current_channel.text = "4";}

        }
        RoundButton{
           id: five
           ButtonGroup.group: btnGroup
           text: "5"
           onClicked: {current_channel.text = "5";}

        }
        RoundButton{
           id: six
           Layout.leftMargin: 30
           ButtonGroup.group: btnGroup
           text: "6"
           onClicked: {current_channel.text = "6";}

        }
        RoundButton{
           id: seven
           ButtonGroup.group: btnGroup
           text: "7"
           onClicked: {current_channel.text = "7";}

        }
        RoundButton{
           id: eight
           ButtonGroup.group: btnGroup
           text: "8"
           onClicked: {current_channel.text = "8";}

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
           onClicked: {current_channel.text = "9";}

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

            Layout.leftMargin: 30
            text: "Ch+"
            implicitWidth: 50
            implicitHeight: 60

            onClicked: inc(current_channel, 1)
        }

        Button{
           id: volume_inc
           implicitWidth: 50
           implicitHeight: 60

           ButtonGroup.group: btnGroup
           Layout.columnSpan: 1

           text: "Vol+"

           onClicked: inc(current_volume, 10)

        }

        Button{
            id: channel_dec
            implicitWidth: 50
            implicitHeight: 60
            ButtonGroup.group: btnGroup
            Layout.columnSpan: 2

            anchors.top: channel_inc.bottom
            Layout.leftMargin: 30
            text: "Ch-"

            onClicked: dec(current_channel, 1)
        }

        Button{
            id: volume_dec
            implicitWidth: 50
            implicitHeight: 60
            ButtonGroup.group: btnGroup
            Layout.columnSpan: 1

            anchors.top: volume_inc.bottom
            text: "Vol-"
            onClicked: dec(current_volume, 10)
        }


        Rectangle {
            id: status_bar
            width: 200
            height: 120
            color: "#1a60ed"
            Layout.leftMargin: 20

            Layout.columnSpan: 3

            GridLayout{
                id:status_grid

                rowSpacing: 30
                rows: 2
                columns: 2

                Text {
                    id: text_channel
                    text: "Channel: "
                    color: "#ffffff"
                    Layout.topMargin: 20
                    Layout.leftMargin: 20

                    font.pointSize: 14
                    font.bold: true
                }

                Text {
                    id: current_channel
                    text: ""
                    color: "#ffffff"
                    Layout.topMargin: 20
                    Layout.leftMargin: 20
                    font.pointSize: 14
                    font.bold: true
                }

                Text {
                    id: text_volume
                    text: "Volume: "
                    color: "#ffffff"
                    Layout.leftMargin: 20
                    font.pointSize: 14
                    font.bold: true
                }

                Text {
                    id: current_volume
                    text: ""
                    color: "#ffffff"
                    Layout.leftMargin: 20
                    font.pointSize: 14
                    font.bold: true
                }
            }


        }
    }

}
