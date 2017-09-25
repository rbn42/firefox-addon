#!/bin/bash
PROFILE=`cat ~/.mozilla/firefox/profiles.ini | grep Path | sed 's/^Path=//g'`
PROFILE=~/.mozilla/firefox/$PROFILE/
TARGET="$1"
rm "$TARGET" -r
mkdir "$TARGET"
cp $PROFILE/lwtheme "$TARGET/" -r
cp $PROFILE/personas "$TARGET/" -r

cat $PROFILE/prefs.js | grep lightweightThemes > "$TARGET/prefs.js"
