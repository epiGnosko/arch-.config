// Bar.qml
import Quickshell

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      property var modelData
      screen: modelData

      anchors {
        bottom: true
        left: true
        right: true
      }

      implicitHeight: 30
      // implicitWidth: 200

      ClockWidget {
        anchors.centerIn: parent
        // now using the time from timeSource
      }
    }
  }
}
