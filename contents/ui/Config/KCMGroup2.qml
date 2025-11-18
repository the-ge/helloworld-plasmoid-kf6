/*
    SPDX-FileCopyrightText: 2013 David Edmundson <davidedmundson@kde.org>
    SPDX-FileCopyrightText: 2021 Mikel Johnson <mikel5764@gmail.com>
    SPDX-FileCopyrightText: 2022 Nate Graham <nate@kde.org>
    SPDX-FileCopyrightText: 2022 ivan tkachenko <me@ratijas.tk>
    SPDX-FileCopyrightText: 2025 Gabriel Tenita <g1704578400@tenita.eu>

    SPDX-License-Identifier: GPL-2.0-or-later

    [HACK] disabled useless warnings from qmllint for stuff related to:
        - org.kde.plasma.plasmoid
*/

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as QQC

import org.kde.kirigami as Kirigami
import org.kde.plasma.plasmoid // qmllint disable import

import ".." as Helloworld

KCM {
    id: root

    property alias cfg_bool2: bool2.checked
    property alias cfg_int2: int2.currentIndex
    property alias cfg_string2: string2.text

    Kirigami.FormLayout {

        RowLayout { // bool2
            Kirigami.FormData.label: root.i18nContext.i18n("Bool setting #2:")
            QQC.RadioButton {
                id: isListNormal
                text: root.i18nContext.i18n("Normal")
                checked: !root.cfg_bool2
                onToggled: root.cfg_bool2 = false
            }
            QQC.RadioButton {
                id: bool2
                text: root.i18nContext.i18n("Altered")
                checked: root.cfg_bool2
                onToggled: root.cfg_bool2 = true
            }
        }

        RowLayout { // int2
            Kirigami.FormData.label: root.i18nContext.i18n("Icon size:")
            QQC.ComboBox {
                id: int2
                model: Helloworld.Global.iconSizes
            }
            QQC.Label {
                text: root.i18nContext.i18n("px")
            }
        }

        Kirigami.ActionTextField { // string2
            Kirigami.FormData.label: root.i18nContext.i18nc("@label:textbox", "String setting #2:")
            id: string2
            text: root.cfg_string2Default
            placeholderText: root.i18nContext.i18nc("@info:placeholder", "Type here to add a text label...")
            onTextEdited: {
                root.cfg_string2 = string2.text
            }
        }
    }
}
