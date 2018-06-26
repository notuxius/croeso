/***************************************************************************
 *   Copyright (C) 2018 Anke Boersma <demm@kaosx.us>       *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.          *
 ***************************************************************************/
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.0
import QtQuick.Dialogs 1.2
import QtWebView 1.1
import org.kde.plasma.core 2.0 as PlasmaCore

ApplicationWindow {
    visible: true
    minimumWidth: 960
    maximumWidth: 960
    minimumHeight: 640
    maximumHeight: 640
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2
    title: qsTr("Netrunner Command Center")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
            Label {
                text: qsTr("<div>Netrunner is a complete Linux Operating System
                            for desktop computers, netbooks and ARM microcomputers,
                            that exclusively uses the KDE Plasma desktop environment</div>")
//                anchors.centerIn: parent
                horizontalAlignment: Text.AlignHCenter
                width: 690
                x: 145
                y: 155
                wrapMode: Text.WordWrap
            }
        }
        
        Page {
            Loader {
                id: wallpaper
                source: "wallpaper/wall.qml"
            }
        }

        Page2 {
            Label {
                textFormat: Text.RichText
                text: qsTr("<p>To familiarize yourself with Netrunner, please visit these pages</p>
                            <p>Use the forums for questions, feedback and suggestions</p>")
                anchors.centerIn: parent
                horizontalAlignment: Text.AlignHCenter
            }
        }
        
        Page3 {
            Label {
                textFormat: Text.RichText
                text: qsTr("<p>Manager repositories and package cache on your system</p>
                            <p>Build Netrunner Rolling ISOs</p>")
                anchors.centerIn: parent
                horizontalAlignment: Text.AlignHCenter
            }
        }
        
//        Page {
//            Loader {
//                id: about
//                source: "notes.qml"
//            }
            
//        }
        
//        Page {
//            WebView {
//                id: webView
//                anchors.fill: parent
//                url: "https://kaosx.us/media/notes.html"
//                //url: "notes.html"
//            }
//        }
    }
    
//    RowLayout {
//        width: 150
//        anchors.rightMargin: 20
//        anchors.right: parent.right
//        anchors.topMargin: 5
//        anchors.top: parent.top
    
//        Button {
//                id: github
//                hoverEnabled: true
//                onClicked: {  Qt.openUrlExternally("https://github.com/KaOSx"); }
//                background: Rectangle {
//                    implicitWidth: 22
//                    implicitHeight: 22
//                    color: "transparent"
//                }
                
//                ToolTip.delay: 500
//                ToolTip.timeout: 5000
//                ToolTip.visible: hovered
//                ToolTip.text: qsTr("Code & Bug trackers on Github for KaOS")
            
//            Image {
//                anchors.fill: parent
//                sourceSize.width: 22
//                sourceSize.height: 22
//                fillMode: Image.PreserveAspectFit
//                source: "images/fontawesome/github.svg"
//            }
//        }
                
//        Button {
//                id: irc
//                hoverEnabled: true
//                onClicked: {  Qt.openUrlExternally("https://kiwiirc.com/client/irc.freenode.net/#kaosx"); }
//                background: Rectangle {
//                    implicitWidth: 24
//                    implicitHeight: 24
//                    color: "transparent"
//                }
                
//                ToolTip.delay: 500
//                ToolTip.timeout: 5000
//                ToolTip.visible: hovered
//                ToolTip.text: qsTr("Join the KaOS IRC Channel")
            
//            Image {
//                anchors.fill: parent
//                sourceSize.width: 24
//                sourceSize.height: 24
//                fillMode: Image.PreserveAspectFit
//                source: "images/fontawesome/comments.svg"
//            }
//        }
        
//        Button {
//                id: gplus
//                hoverEnabled: true
//                onClicked: {  Qt.openUrlExternally("https://plus.google.com/u/0/communities/116669111554447085724"); }
//                background: Rectangle {
//                    implicitWidth: 24
//                    implicitHeight: 24
//                    color: "transparent"
//                }
                
//                ToolTip.delay: 500
//                ToolTip.timeout: 5000
//                ToolTip.visible: hovered
//                ToolTip.text: qsTr("Google Plus KaOS community")
            
//            Image {
//                anchors.fill: parent
//                sourceSize.width: 24
//                sourceSize.height: 24
//                fillMode: Image.PreserveAspectFit
//                source: "images/fontawesome/google-plus-g.svg"
//            }
//        }
        
//        Button {
//                id: gitter
//                hoverEnabled: true
//                onClicked: {  Qt.openUrlExternally("https://gitter.im/KaOSx/KaOS/"); }
//                background: Rectangle {
//                    implicitWidth: 22
//                    implicitHeight: 22
//                    color: "transparent"
//                }
                
//                ToolTip.delay: 500
//                ToolTip.timeout: 5000
//                ToolTip.visible: hovered
//                ToolTip.text: qsTr("Gitter Chat for KaOS")
            
//            Image {
//                anchors.fill: parent
//                sourceSize.width: 22
//                sourceSize.height: 22
//                fillMode: Image.PreserveAspectFit
//                source: "images/fontawesome/gitter.svg"
//            }
//        }
        
//        Button {
//                id: mail
//                hoverEnabled: true
//                onClicked: {  Qt.openUrlExternally("https://groups.google.com/forum/?fromgroups#!forum/kaos-general"); }
//                background: Rectangle {
//                    implicitWidth: 22
//                    implicitHeight: 22
//                    color: "transparent"
//                }
                
//                ToolTip.delay: 500
//                ToolTip.timeout: 5000
//                ToolTip.visible: hovered
//                ToolTip.text: qsTr("KaOS Mail Group")
            
//            Image {
//                anchors.fill: parent
//                sourceSize.width: 22
//                sourceSize.height: 22
//                fillMode: Image.PreserveAspectFit
//                source: "images/fontawesome/envelope.svg"
//            }
//        }
//    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Customize")
        }
        TabButton {
            text: qsTr("Wallpaper")
        }
//        TabButton {
//            text: qsTr("Docs")
//        }
//        TabButton {
//            text: qsTr("Advanced")
//        }
        TabButton {
            text: qsTr("About")
        }
        TabButton {
            text: qsTr("Build")
        }
        TabButton {
            text: qsTr("Quit")
            onClicked: { Qt.quit(); }
        }
    }
}
