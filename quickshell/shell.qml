import Quickshell
import QtQuick

Scope{
  Bar {}

  Rectangle{
    id: rect1
    width: 100
    height: 50
  }

  Rectangle{
    id: rect2
    anchors.left: rect1.right
    anchors.top: rect1.bottom
    width: 100
    height: 50
  }
}
