#!/usr/bin/env zsh

ICON_PADDING_RIGHT=5

case $INFO in
"Code")
  ICON_PADDING_RIGHT=4
  ICON=󰨞
  ;;
"Calendar")
  ICON_PADDING_RIGHT=3
  ICON=
  ;;
"Finder")
  ICON=󰀶
  ;;
"Google Chrome")
  ICON_PADDING_RIGHT=7
  ICON=
  ;;
"Messages")
  ICON=
  ;;
"Obsidian")
  ICON_PADDING_RIGHT=6
  ICON=󰎚
  ;;
"Preview")
  ICON_PADDING_RIGHT=3
  ICON=
  ;;
"Spotify")
  ICON_PADDING_RIGHT=2
  ICON=
  ;;
"TextEdit")
  ICON_PADDING_RIGHT=4
  ICON=
  ;;
"WezTerm")
  ICON_PADDING_RIGHT=4
  ICON=
  ;;
"Slack")
  ICON_PADDING_RIGHT=4
  ICON=
  ;;
"Microsoft Teams")
  ICON_PADDING_RIGHT=4
  ICON=󰊻
  ;;
"Microsoft Outlook")
  ICON_PADDING_RIGHT=4
  ICON=󰴢
  ;;
"GitHub Desktop")
  ICON_PADDING_RIGHT=4
  ICON=󰊤
  ;;
*)
  ICON_PADDING_RIGHT=2
  ICON=
  ;;
esac

sketchybar --set $NAME icon=$ICON icon.padding_right=$ICON_PADDING_RIGHT
sketchybar --set $NAME.name label="$INFO"
