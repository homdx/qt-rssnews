import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    width: 400
    height: 600

    title: qsTr("Example downloaded qml")

    Label {
        text: qsTr("You are on internet downloaded page")
        anchors.centerIn: parent
    }
}
