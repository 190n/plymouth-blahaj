#!/usr/bin/env python3

# this script creates a second version of the animation that fades out over time. these files are
# animation-XXXX.png. i think plymouth could use this to smooth the transition to the login screen,
# although it doesn't seem to be used for me.

import os
import re
import sys

digits = re.compile(r'\d+')

# like blåhaj/throbber-0001.png
filename = sys.argv[1]
num = int(digits.search(filename).group())
# fades from 1.0 to 1/60 over the animation
opacity = (61 - num) / 60
output = filename.replace('throbber', 'animation')
os.system(f'ffmpeg -loglevel quiet -i {filename} -vf colorchannelmixer=aa={opacity} -y {output}')
os.system(f'optipng -o7 -silent {output}')
