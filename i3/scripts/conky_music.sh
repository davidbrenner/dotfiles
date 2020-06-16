#!/bin/sh

what_is_running() {
  if [ -n "$(pgrep pianobar)" ]; then
    echo pianobar
  elif [ -n "$(pgrep mpd)" ] && [ -n "$(mpc current)" ]; then
    echo mpd
  else
    echo none
  fi
}

trim() {
  cat /dev/stdin | sed 's/^ *//g' | sed 's/ *$//g'
}

running=$(what_is_running)

if [ "$running" = "none" ]; then
  #echo "Nothing playing."
  echo
elif [ "$running" = "pianobar" ]; then
  title=$(cat ~/.config/pianobar/nowplaying | cut -f1 -d:)
  artist=$(cat ~/.config/pianobar/nowplaying | cut -f2 -d:)
  echo "♪ $artist - $title"
elif [ "$running" = "mpd" ]; then
  if [[ $(mpc status) = *playing* ]]; then
    artist=$(mpc current | sed 's/"/\\"/g' | cut -f1 -d- | trim)
    title=$(mpc current | sed 's/"/\\"/g' | cut -f2 -d- | trim)
    echo "♪ $artist - $title"
  else
    #echo "Nothing playing."
    echo
  fi
fi
