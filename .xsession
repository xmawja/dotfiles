# UTF-8
export LANG=en_US.UTF-8

# specify location of kshrc
export ENV=$HOME/.kshrc

# load Xresources file
xrdb -merge $HOME/.Xresources

# set your background color
#xsetroot -solid dimgray

# xidle will lock your display after a period of inactivity
#xidle &

# disable system beep
#xset b off

# use caps lock as ctrl key
#setxkbmap -option ctrl:nocaps

# If Emacs is started in server mode, `emacsclient` is a convenient way to
# edit files in place (used by e.g. `git commit`).
#export VISUAL=emacsclient
#export EDITOR="$VISUAL"

# launch emacs.
#exec dbus-launch --exit-with-session emacs

# picom compositor
picom &
# slstatus bar
slstatus &
# feh background
~/.fehbg &
# dwm status bar script
~/.config/suckless/dwm-bar/dwm_bar.sh &
# window manager
exec dbus-launch --exit-with-session dwm

