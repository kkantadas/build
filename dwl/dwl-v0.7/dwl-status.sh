while true; do
    date
    sleep 1

done |dwl -s "exec dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP "
