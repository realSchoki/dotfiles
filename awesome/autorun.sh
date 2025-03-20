#!/bin/sh

run() {
  if ! pgrep -f "$1"; then
    "$@" &
  fi
}

run "picom -o 0.0"
run "nm-applet"
run "blueman-applet"
run "telegram-desktop"
run "xscreensaver --no-splash"
run "mullvad-vpn"
run "caffeine"
run "nextcloud"
run "discord"
run "flameshot"
run "lxpolkit"
#run "~/.config/polybar/launch.sh"

#awful.spawn.with_shell("killall redshift; redshift -l 51.48371:7.5003")

#run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1" &
#run "keepassxc" &
#run "xscreensaver" --no-splash &
#run "volumeicon" &
#run "nm-applet" &
#run "ibus-daemon" -drxR &
#run "caffeine" &
#run "feh" --randomize --recursive --bg-fill ~/Pictures/Wallpapers/ &
#run "picom" -b &
#run "cbatticon" -n &
# run "" &
