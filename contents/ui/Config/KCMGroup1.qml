/*
    SPDX-FileCopyrightText: 2025 Gabriel Tenita <g1704578400@tenita.eu>

    SPDX-License-Identifier: GPL-2.0-or-later

    HACK: disabled useless warnings from qmllint for stuff related to:
        - org.kde.plasma.plasmoid
*/

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls as QQC

import org.kde.kirigami as Kirigami
import org.kde.plasma.plasmoid // qmllint disable import

KCM {
    id: root

    property alias cfg_bool1: bool1.checked
    property alias cfg_int1: int1.currentIndex
    property alias cfg_string1: string1.text

    Kirigami.FormLayout {
        QQC.CheckBox { // bool1
            id: bool1
            text: root.i18nContext.i18n("Apply bool setting #1")
        }

        QQC.ComboBox { // int1
            Kirigami.FormData.label: root.i18nContext.i18n("Int setting #1:")
            id: int1
            model: [
                root.i18nContext.i18n("Label #0"),
                root.i18nContext.i18n("Label #1"),
                root.i18nContext.i18n("Label #2"),
                root.i18nContext.i18n("Label #3"),
                root.i18nContext.i18n("Label #4"),
                root.i18nContext.i18n("Label #5"),
            ]
        }
 
        Kirigami.ActionTextField { // string2
            Kirigami.FormData.label: root.i18nContext.i18nc("@label:textbox", "String setting #1:")
            id: string1
            text: root.cfg_string1Default
            placeholderText: root.i18nContext.i18nc("@info:placeholder", "Type here to add a text label...")
            onTextEdited: {
                root.cfg_string1 = string1.text
            }
        }
   }
}
