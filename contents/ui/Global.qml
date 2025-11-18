/* SPDX-FileCopyrightText: 2021 Noah Davis <noahadvs@gmail.com>
 * SPDX-License-Identifier: LGPL-2.0-or-later
 */

pragma ComponentBehavior: Bound
pragma Singleton // NOTE: Singletons are shared between all instances of a plasmoid

import QtQuick
import org.kde.kirigami as Kirigami
import org.kde.private.kquickcontrols as PKQC

// Using Item because it has a default property.
// Trying to create a default property for a QtObject seems to cause segfaults.
Item {
    id: root

    visible: false

    //BEGIN Reusable Objects
    readonly property PKQC.TranslationContext i18nContext: PKQC.TranslationContext{
        domain: "thege.hodpodge.launcher"
    }

    readonly property var iconSizes: [
        Kirigami.Units.iconSizes.small,
        Kirigami.Units.iconSizes.smallMedium,
        Kirigami.Units.iconSizes.medium,
        Kirigami.Units.iconSizes.large,
        Kirigami.Units.iconSizes.huge,
        Kirigami.Units.iconSizes.enormous
    ]
    //END

    //BEGIN Metrics
    readonly property FontMetrics fontMetrics: FontMetrics {
        id: fontMetrics
        font: Kirigami.Theme.defaultFont
    }
    //END
}
