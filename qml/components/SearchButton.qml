/*
    Copyright (C) 2017-20 Sebastian J. Wolf

    This file is part of Piepmatz.

    Piepmatz is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Piepmatz is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Piepmatz. If not, see <http://www.gnu.org/licenses/>.
*/
import QtQuick 2.0
import QtGraphicalEffects 1.0
import Sailfish.Silica 1.0

Column {
    id: searchButton
    property bool isActive: false

    width: parent.width
    IconButton {
        id: searchButtonImage
        height: Theme.iconSizeMedium
        width: Theme.iconSizeMedium
        icon.source: searchButton.isActive ? "image://theme/icon-m-search?" + Theme.highlightColor : "image://theme/icon-m-search?" + Theme.primaryColor
        anchors {
            horizontalCenter: parent.horizontalCenter
        }
        onClicked: {
            handleSearchClicked();
        }
    }
    Label {
        id: searchButtonText
        text: qsTr("Search")
        font.pixelSize: Theme.fontSizeTiny * 4 / 5
        color: searchButton.isActive ? Theme.highlightColor : Theme.primaryColor
        truncationMode: TruncationMode.Elide
        elide: Text.ElideRight
        width: parent.width - Theme.paddingSmall
        horizontalAlignment: Text.AlignHCenter
        anchors {
            horizontalCenter: parent.horizontalCenter
        }
        MouseArea {
            anchors.fill: parent
            onClicked: handleSearchClicked();
        }
    }
}
