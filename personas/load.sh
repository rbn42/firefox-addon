#!/bin/bash
PROFILE=`cat ~/.mozilla/firefox/profiles.ini | grep Path | sed 's/^Path=//g'`
PROFILE=~/.mozilla/firefox/$PROFILE
TARGET="$1"
rm $PROFILE/lwtheme  -r
rm $PROFILE/personas  -r

cp "$TARGET/lwtheme" $PROFILE/lwtheme -r
cp "$TARGET/personas" $PROFILE/personas -r

cat "$TARGET/prefs.js" >> $PROFILE/prefs.js
