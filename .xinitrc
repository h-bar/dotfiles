#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ -f $usermodmap	]; then
    xmodmap $usermodmap
else
	xmodmap $sysmodmap
fi

setxkbmap -layout tr,us -option grp:alt_caps_toggle &
pulsemixer --unmute &
urxvtd &
compton -b &
parcellite &
unclutter &
nm-applet &
udiskie --smart-tray &
mopidy &
redshift-gtk &
export GTK_IM_MODULE=uim
export QT_IM_MODULE=uim
uim-xim &
export XMODIFIERS=@im=uim

exec awesome
