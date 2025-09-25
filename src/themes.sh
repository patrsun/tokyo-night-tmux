#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @tokyo-night-tmux_transparent)"

case $SELECTED_THEME in
"storm")
  declare -A THEME=(
    ["background"]="#24283b"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#414868"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#f7768e"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
    ["bblack"]="#414868"
  )
  ;;

"day")
  declare -A THEME=(
    ["background"]="#eff1f5"
    ["foreground"]="#4c4f69"
    ["black"]="#5c5f77"
    ["red"]="#d20f39"
    ["green"]="#40a02b"
    ["yellow"]="#df8e1d"
    ["blue"]="#1e66f5"
    ["magenta"]="#8839ef"
    ["cyan"]="#04a5e5"
    ["white"]="#4c4f69"

    ["bblack"]="#ccd0da"
    ["bred"]="#e64553"
    ["bgreen"]="#40a02b"
    ["byellow"]="#fe640b"
    ["bblue"]="#7287fd"
    ["bmagenta"]="#ea76cb"
    ["bcyan"]="#209fb5"
    ["bwhite"]="#acb0be"
    ["base"]="#eff1f5"
  )
  ;;

"rose-pine-dawn")
  declare -A THEME=(
    ["background"]="#faf4ed"
    ["foreground"]="#575279"
    ["black"]="#9893a5"
    ["red"]="#b4637a"
    ["green"]="#286983"
    ["yellow"]="#ea9d34"
    ["blue"]="#56949f"
    ["magenta"]="#907aa9"
    ["cyan"]="#d7827e"
    ["white"]="#575279"

    ["bblack"]="#f2e9e1"
    ["bred"]="#b4637a"
    ["bgreen"]="#286983"
    ["byellow"]="#ea9d34"
    ["bblue"]="#56949f"
    ["bmagenta"]="#907aa9"
    ["bcyan"]="#d7827e"
    ["bwhite"]="#575279"
    ["base"]="#faf4ed"
  )
  ;;

*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#1A1B26"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#c0caf5"
    ["yellow"]="#e0af68"

    ["bblack"]="#2A2F41"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#ff9e64"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
    ["base"]="#2A2F41"
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
