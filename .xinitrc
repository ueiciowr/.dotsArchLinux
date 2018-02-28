#!/bin/sh

#-------------------------------#
#  ╻ ╻╻┏┓╻╻╺┳╸┏━┓┏━╸            #
#  ┏╋┛┃┃┗┫┃ ┃ ┣┳┛┃              #
# ╹╹ ╹╹╹ ╹╹ ╹ ╹┗╸┗━╸            #
# by Morgareth                  #
# no login manager since forever#
#-------------------------------#

# Edited

# ----------------------------------------------------------------------------##
# Launch dbus
# ----------------------------------------------------------------------------##

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# ----------------------------------------------------------------------------##
# Update Xresources And Xdefaults
# ----------------------------------------------------------------------------##

[[ -f ~/.Xresources ]] && xrdb -merge "${HOME}/.Xresources"
[[ -f ~/.Xdafaults ]] && xrdb -merge "${HOME}/.Xdafaults"
[ !  -s ~/.config/mpd/pid ] && mpd

# ----------------------------------------------------------------------------##
# General settings
# ----------------------------------------------------------------------------##

xsetroot -cursor_name left_ptr
urxvtd -q -o -f
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
nitrogen --restore &
(sleep 2s && dunst) &
compton --config ~/.config/compton.conf -b &> /tmp/compton.log
udiskie &
unclutter &
nitrogen --restore &
urxvtd -q -f -o &

# ----------------------------------------------------------------------------##
# startx
# ----------------------------------------------------------------------------##

_start_session() {
  session=${1:-i3}
  case $session in
      awesome           ) exec awesome;;
      bspwm             ) exec bspwm;;
      xmonad            ) exec xmonad;;
      dwm               ) exec dwm;;
      2bwm              ) exec 2bwm ;;
      i3                ) exec i3;;
      monsterwm         ) exec monsterwm;;
      herbstluftwm      ) exec herbstluftwm;;
      mate              ) exec mate-session;;
      openbox           ) exec openbox-session;;
      xfce|xfce4        ) exec startxfce4;;
      # No known session, try to run it as command
      *) exec "$1";;
  esac
}
_start_session "$@"

