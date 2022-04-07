#!/bin/sh
BASE_DIR=$(dirname "$(readlink -f "$0")")/..
ARCH_TRIPLET=$(uname -m)-linux-gnu
export QML_IMPORT_PATH="$BASE_DIR"/usr/lib/"$ARCH_TRIPLET"/qt5/qml/:$QML_IMPORT_PATH
export QML2_IMPORT_PATH="$BASE_DIR"/usr/lib/"$ARCH_TRIPLET"/qt5/qml/:$QML2_IMPORT_PATH
export QT_PLUGIN_PATH="$BASE_DIR"/usr/lib/"$ARCH_TRIPLET"/qt5/plugins/:$QT_PLUGIN_PATH
export QTDIR="$BASE_DIR"/usr/lib/"$ARCH_TRIPLET"/qt5
export QT_QPA_PLATFORM_PLUGIN_PATH="$BASE_DIR"/usr/lib/"$ARCH_TRIPLET"/qt5/plugins/platforms:$QT_QPA_PLATFORM_PLUGIN_PATH
export QT_QPA_PLATFORM=wayland
export XKB_CONFIG_ROOT="$BASE_DIR"/usr/share/X11/xkb
export XLOCALEDIR="$BASE_DIR"/usr/share/X11/locale

"$BASE_DIR/bin/RoinCamera" "$@"
