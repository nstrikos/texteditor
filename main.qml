import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Hello World")
    TextEdit {
        id: textEdit
        anchors.fill: parent
        anchors.leftMargin: parent.width / 10
        anchors.rightMargin: parent.width / 10
        focus: true
        font.pointSize: Screen.height / 12
        wrapMode: TextEdit.Wrap
        onTextChanged: {
            var i = textEdit.cursorPosition
            text = text.toUpperCase()
            textEdit.cursorPosition = i
        }

        Keys.onPressed: {
            if (event.key === Qt.Key_Up) {
                    font.pointSize++
                event.accepted = true
            }
            if (event.key === Qt.Key_Down) {
                    font.pointSize--
                event.accepted = true
            }
            if (event.key === Qt.Key_F1) {
                textEdit.color = "black"
            }
            if (event.key === Qt.Key_F2) {
                textEdit.color = "red"
            }
            if (event.key === Qt.Key_F3) {
                textEdit.color = "green"
            }
            if (event.key === Qt.Key_F4) {
                textEdit.color = "blue"
            }
            if (event.key === Qt.Key_F5) {
                textEdit.color = "yellow"
            }
            if (event.key === Qt.Key_F6) {
                textEdit.color = "orange"
            }
            if (event.key === Qt.Key_F7) {
                textEdit.color = "purple"
            }
            if (event.key === Qt.Key_F8) {
                textEdit.color = "pink"
            }
            if (event.key === Qt.Key_F9) {
                textEdit.color = "green yellow"
            }
            if (event.key === Qt.Key_Escape) {
                textEdit.text = ""
            }
        }
    }
}
