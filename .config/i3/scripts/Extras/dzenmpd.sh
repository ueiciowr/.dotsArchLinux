#!/bin/bash
#-----------------------------------------------------------------------------
# File: dzen-popup-mpd.sh
# Creation Date: Jul 04 2012 [01:15:43]
# Last Modified: May 18 2013 [16:07:50]
# Created By: Samuli Thomasson [SimSaladin] samuli.thomassonAtpaivola.fi
#-----------------------------------------------------------------------------
#
# (c) 2007, by Jochen Schweizer
# (c) 2007 Christian Dietrich
# with help from Robert Manea

BG='#222'
FG='#ccc'
GH=8
GW=40
GFG='#aecf96'
GBG='#37383a'
FONT="Monospace-9"
HEIGHT=20

X=20
Y=50
WIDTH=$(( (999 - 400) / 2 - 30))

FW="mpc volume +5"    # 5 sec forwards
RW="mpc volume -5"    # 5 sec backwards
NEXTS="mpc next"      # previous song
PREVS="mpc prev"      # next song
TOGGS="mpc toggle"    # play/pause
FILE=/dev/shm/musicmeter.$USER
PIDFILE=$HOME/.pid_dzen_mpd_popup
ICONPATH=$HOME/.icons/xbm8x8

MAXPOS="100"

trap 'kill $(jobs -p)' EXIT
pkill -F "$PIDFILE"
echo "$$" > "$PIDFILE"

while :; do
  MPC=`mpc`
# POS=`echo "$MPC" | sed -ne 's/volume: \(.*\)%.*/\1/p'`
# POSM="$POS $MAXPOS"
  TITLE=`echo "$MPC" | head -n 1`
  (
     echo -n "^tw()" #^i(${ICONPATH}/music.xbm)"
#    echo "$POSM" | gdbar -h $GH -w $GW -fg $GFG -bg $GBG -nonl
     echo " $TITLE "
     echo "^cs()"
     echo "$MPC" | sed 's/\[/[^fg(green)/; s/\]/^fg()]/'
     echo $( (echo ""; mpc playlist) | grep -C 1 "^>" | sed  -ne "1 s/^[^)]*) /^fg(red)Previous:^fg() /p;
     i  \ 
     ;3 s/^[^)]*) /^fg(green)Next:^fg() /p;"  | tr -d "\n")
  ) > $FILE
  cat $FILE
  sleep 1
done 2>/dev/null |  dzen2 -x $X -w $WIDTH -y $Y -ta l -sa c -fg $FG -bg $BG \
       -fn "$FONT" -l 4  \
       -h $HEIGHT \
       -e "button4=exec:$RW;button5=exec:$FW;button1=exec:$NEXTS;
          ;button3=exec:$PREVS;button2=exec:$TOGGS;entertitle=uncollapse;leavetitle=collapse"