import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.centerIn: parent

        TextField {
            id: textField

            text: "QtRask QRCode Generator"
        }

        Image {
            id: qrCode

            fillMode: Image.PreserveAspectFit
            source: "image://QRCode/" + textField.text
            sourceSize.width: 200
            sourceSize.height: 200

            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
