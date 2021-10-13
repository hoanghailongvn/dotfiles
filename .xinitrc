xmodmap ~/.Xmodmap

/* run ibus */
ibus-daemon -drxR
xrandr -s 1280x720

/* fix bug keyring in mailspring */
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec awesome
