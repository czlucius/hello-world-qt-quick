import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2
import QtQuick.Layouts 6.0



Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int clickCount: 0;




    ColumnLayout {
        id: columnLayout
        anchors.centerIn: parent

        Text {
            id: helloWorldText
            text: qsTr("Hello World!")
            anchors.horizontalCenter: parent;
        }

        Button {
            id: button
            text: qsTr("Click me!")
            Layout.alignment: Qt.AlignHCenter
            palette.buttonText: "black"
            onClicked: {
                clickCount++
                helloWorldText.text = "You have clicked me " + clickCount + " times."
            }
        }
    }


}
