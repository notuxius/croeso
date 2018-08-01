import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1
import QtGraphicalEffects 1.0

import Unwallpaper 1.0

Item {
    visible: true
    width: 960
    height: 620

//    QNetworkAccessManager.networkAccessible()

    Label {
        textFormat: Text.RichText
        text: qsTr("<p>Unable to download wallpapers list</p>
                    <p>Check your internet connection</p>")
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
    }

    Item {
        id: navbar
        width: parent.width
        height: 40
        clip: true
        z: 1

        FastBlur {
            width: parent.width
            height: content.height
            source: content
            radius: 32
        }

        Rectangle {
            width: parent.width
            height: parent.height
            color: "#AAFFFFFF"
        }

        Row {
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 20
            spacing: 20
            
            Nav {
                id: latestPhotoNav
                //: Navbar entry
                text: qsTr("Latest")
                active: true
            }

            Nav {
                id: popularPhotoNav
                //: Navbar entry
                text: qsTr("Popular")
                active: false
            }

            Nav {
                id: curatedPhotoNav
                //: Navbar entry
                text: qsTr("Curated")
                active: false
            }

            Nav {
                id: downloadedPhotoNav
                //: Navbar entry
                text: qsTr("Downloaded")
                active: false
            }
        }
    }

    Item {
        id: content
        width: parent.width
        height: parent.height

        PhotoList {
            id: latestPhotoList
            visible: latestPhotoNav.active
            model: PhotoListModel {
                order: PhotoListModel.Latest
            }
        }

        PhotoList {
            id: popularPhotoList
            visible: popularPhotoNav.active
            model: PhotoListModel {
                order: PhotoListModel.Popular
            }
        }

        PhotoList {
            id: curatedPhotoList
            visible: curatedPhotoNav.active
            model: PhotoListModel {
                order: PhotoListModel.Latest
                curated: true
            }
        }

        PhotoList {
            id: downloadedPhotoList
            visible: downloadedPhotoNav.active

            model: LocalPhotoListModel {
            }
        }
    }

}
