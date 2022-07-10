#!/bin/bash

# convert a full frame to one that's cropped to only the interesting part and scaled to 256 pixels
# wide. the "throbber" images are played in a loop by plymouth.

# ex. frames/0001.png -> blåhaj/throbber-0001.png
in="$1"
out=blåhaj/throbber-$(basename "$in")
ffmpeg -loglevel quiet -i "$in" -vf crop=806:529:1517:716,scale=256:-1 -y "$out"
# optional, makes output files a bit smaller
optipng -o7 -silent "$out"
