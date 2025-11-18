/*
    SPDX-FileCopyrightText: 2025 Gabriel Tenita <g1704578400@tenita.eu>

    SPDX-License-Identifier: GPL-2.0-or-later

    [HACK] disabled useless warnings from qmllint for stuff related to:
        - org.kde.plasma.plasmoid
*/

pragma ComponentBehavior: Bound

import QtQuick
import org.kde.kcmutils as KCMU
import org.kde.kirigami as Kirigami
import ".." as Helloworld

KCMU.SimpleKCM {
    id: root

    readonly property var i18nContext: Helloworld.Global.i18nContext

    // qmllint disable unqualified
    property bool   cfg_bool1Default: Plasmoid.configuration.bool1
    property int    cfg_int1Default: Plasmoid.configuration.int1
    property string cfg_string1Default: Plasmoid.configuration.string1

    property bool   cfg_bool2Default: Plasmoid.configuration.bool2
    property int    cfg_int2Default: Plasmoid.configuration.int2
    property string cfg_string2Default: Plasmoid.configuration.string2

    property bool   cfg_bool1: cfg_bool1Default
    property int    cfg_int1: cfg_int1Default
    property string cfg_string1: cfg_string1Default

    property bool   cfg_bool2: cfg_bool2Default
    property int    cfg_int2: cfg_int2Default
    property string cfg_string2: cfg_string2Default

    function restoreDefaults() {
        // TODO get default values from main.xml
        cfg_bool1 = true
        cfg_int1 = 2
        cfg_string1 = 'qwerty'

        cfg_bool2 = false
        cfg_int2 = 3
        cfg_string2 = 'asdfgh'
    }

    Kirigami.FormLayout {
        id: form
    }
}
