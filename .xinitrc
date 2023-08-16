#! /bin/sh
xrdb -load ~/.Xresources

xrandr --dpi 168

# Map Caps lock to Esc key
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

#if [[ "$(xrandr | grep 'DP-2 connected')" != "" ]]; then
#xrandr --output DP-2 --primary --mode 3840x2160 --rotate normal --output eDP-1 --off
#fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec bspwm
