/*
    SPDX-FileCopyrightText: 2025 Gabriel Tenita <g1704578400@tenita.eu>

    SPDX-License-Identifier: GPL-2.0-or-later

    TODO: remove implicit categories (shortcuts and about) or - at least - change their icons

    HACK: disabled useless warnings from qmllint for stuff related to:
        - org.kde.plasma.configuration
*/

import QtQuick
import org.kde.plasma.configuration // qmllint disable import

// qmllint disable missing-property import unqualified
ConfigModel {
    id: kcmRoot
    ConfigCategory {
        id: kcmGroup1
        name: i18n("Configuration Group #1")
        icon: "preferences-desktop-symbolic"
        source: "Config/KCMGroup1.qml"
    }
    ConfigCategory {
        id: kcmGroup2
        name: i18n("Configuration Group #2")
        icon: "preferences-desktop-appearance-symbolic"
        source: "Config/KCMGroup2.qml"
    }
// qmllint enable
}
