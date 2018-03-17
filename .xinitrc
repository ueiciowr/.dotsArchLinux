#!/bin/sh

## ----------- ##
##  @ueiciowr 
## ----------- ##

## ----------------------------------------------------------------------------##
## Launch
## ----------------------------------------------------------------------------##

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

## ----------------------------------------------------------------------------##
## Update
## ----------------------------------------------------------------------------##

[[ -f ~/.Xresources ]] && xrdb -merge "${HOME}/.Xresources"
[ !  -s ~/.config/mpd/pid ] && mpd

## ----------------------------------------------------------------------------##
## Settings
## ----------------------------------------------------------------------------##

nitrogen --restore &
(sleep 2s && dunst) &
compton --config ~/.config/compton.conf -b &> /tmp/compton.log

## ----------------------------------------------------------------------------##
## Startx session, Here i3 is kept as default
## ----------------------------------------------------------------------------##

  session=${A:-i3}
  case $session in
      awesome      )      exec awesome;;
      bspwm        )      exec bspwm;;
      dwm          )      exec dwm;;
      2bwm         )      exec 2bwm ;;
      i3           )      exec i3;;
      openbox      )      exec openbox-session;;
      xfce|xfce4   )      exec startxfce4;;
      kde          )      exec startkde;;
      # No known session, try to run it as command
      *) exec "$A";;
  esac
  
