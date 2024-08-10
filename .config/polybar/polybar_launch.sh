
#! /bin/sh

# terminate already running instances
killall -q polybar

# wait until the processess have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch bar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    # MONITOR=$m polybar --reload example &
    MONITOR=$m polybar center_bar -c ~/.config/polybar/config.ini &
    MONITOR=$m polybar left_bar -c ~/.config/polybar/config.ini &
    MONITOR=$m polybar right_bar -c ~/.config/polybar/config.ini &

  done
else
    polybar center_bar -c ~/.config/polybar/config.ini &
    polybar left_bar -c ~/.config/polybar/config.ini &
    polybar right_bar -c ~/.config/polybar/config.ini &
fi
