#!/usr/bin/env zsh

update_space() {

    case $FOCUSED_WORKSPACE in
    1)
      ICON=󰎤
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    2)
      ICON=󰎧
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    3)
      ICON=󰎪
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    B)
      ICON=
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    C)
      ICON=
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    E)
      ICON=󰈔
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    G)
      ICON=
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    M)
      ICON=
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    N)
      ICON=󰈙
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    T)
      ICON=
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    S)
      ICON=
      ICON_PADDING_LEFT=7
      ICON_PADDING_RIGHT=7
      ;;
    *)
        ICON=$FOCUSED_WORKSPACE
        ICON_PADDING_LEFT=9
        ICON_PADDING_RIGHT=10
        ;;
    esac

    sketchybar --set $NAME \
        icon=$ICON \
        icon.padding_left=$ICON_PADDING_LEFT \
        icon.padding_right=$ICON_PADDING_RIGHT
}

case "$SENDER" in
"mouse.clicked")
    # Reload sketchybar
    sketchybar --remove '/.*/'
    source $HOME/.config/sketchybar/sketchybarrc
    ;;
*)
    update_space
    ;;
esac