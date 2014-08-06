#!/bin/bash

while true
do
  x=$(inotifywait -e modify -r --format "%w%f" .)
  ext="${x##*.}"
  if [[ "$ext" = "ly" ]]
  then
    lilypond "$x"
  fi
done
