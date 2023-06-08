#!/bin/sh
#################################################################
#                       VARIABLES                               #
#################################################################
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#################################################################
#                       DEFAULTS                                #
#################################################################
# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#################################################################
#                       EXECUTED BKGS                           #
#################################################################
# picom
picom &
# fehbg
~/.fehbg &
# slstatus
#slstatus &
dwmblocks &
# pipewire
# Reap any existing daemons and only then try to start a new set.
pkill -u "${USER}" -x pipewire\|wireplumber 1>/dev/null 2>&1
# pipewire 
pipewire &
#pipewire-pulse &
wireplumber &
# for Gentoo Users
gentoo-pipewire-launcher &
# window manager 
exec dbus-launch --sh-syntax --exit-with-session Hyprland

