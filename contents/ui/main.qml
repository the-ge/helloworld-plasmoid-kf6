/*
    SPDX-FileCopyrightText: 2011 Martin Gräßlin <mgraesslin@kde.org>
    SPDX-FileCopyrightText: 2012 Gregor Taetzner <gregor@freenet.de>
    SPDX-FileCopyrightText: 2012 Marco Martin <mart@kde.org>
    SPDX-FileCopyrightText: 2013 David Edmundson <davidedmundson@kde.org>
    SPDX-FileCopyrightText: 2015 Eike Hein <hein@kde.org>
    SPDX-FileCopyrightText: 2021 Mikel Johnson <mikel5764@gmail.com>
    SPDX-FileCopyrightText: 2021 Noah Davis <noahadvs@gmail.com>
    SPDX-FileCopyrightText: 2025 Gabriel Tenita <g1704578400@tenita.eu>

    SPDX-License-Identifier: GPL-2.0-or-later

    [HACK] disabled useless warnings from qmllint for stuff related to:
        - org.kde.plasma.plasmoid
        - org.kde.plasma.private.kicker
        - JavaScript Math
*/

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
//
import org.kde.kirigami as Kirigami
import org.kde.plasma.components as PComponents
import org.kde.plasma.core as PCore
import org.kde.plasma.plasmoid // qmllint disable import

PlasmoidItem { // qmllint disable import
    id: helloworld

    preferredRepresentation: compactRepresentation

    fullRepresentation: Item {
        Layout.minimumWidth: mainContainer.implicitWidth
        Layout.minimumHeight: mainContainer.implicitHeight
        Layout.preferredWidth: 160 * Screen.devicePixelRatio
        Layout.preferredHeight: 240 * Screen.devicePixelRatio
        Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
        
        ColumnLayout {
            id: mainContainer
            anchors.centerIn: parent

            PComponents.Label {
                id: bool1
                text: Plasmoid.configuration.bool1
            }

            PComponents.Label {
                id: int1
                text: Plasmoid.configuration.int1
            }

            PComponents.Label {
                id: string1
                text: Plasmoid.configuration.string1
            }

            PComponents.Label {
                id: bool2
                text: Plasmoid.configuration.bool2
            }

            PComponents.Label {
                id: int2
                text: Plasmoid.configuration.int2
            }

            PComponents.Label {
                id: string2
                text: Plasmoid.configuration.string2
            }

        }
    }
} // root
