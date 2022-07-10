plymouth-blåhaj
===============

This is a Plymouth theme which gives you a spinning low-poly [Blåhaj](https://www.ikea.com/us/en/p/blahaj-soft-toy-shark-90373590/) as your Linux system boots.

The 3D model used is by [@IsabelleDotJpeg](https://twitter.com/IsabelleDotJpeg) via [Sketchfab](https://sketchfab.com/3d-models/low-poly-blahaj-5ac23e0cd44d49dcaaa14967f7d7a778), licensed under the [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/) license.


## Usage

- Install by copying the `blåhaj` directory to `/usr/share/plymouth/themes`
- Follow your distribution's instructions for changing the theme. [On Arch](https://wiki.archlinux.org/title/Plymouth#Changing_the_theme) you need to:
	- change the `Theme` option in `/etc/plymouth/plymouthd.conf` to `blåhaj`
	- run `plymouth-set-default-theme -R blåhaj` as root. For me, this generates a _ton_ of warnings about UTF-8 filenames, but it does end up working.

	It's probably the same on other distros, but it's worth checking.

## Files

- `spinny.blend` is a Blender project containing the 3D model set up to spin around in a loop
- `frames` contains 4K (in retrospect, overkill) renders of the blåhaj in various orientations
- `blåhaj` contains the theme itself, mostly copied from the default `spinner` theme except for the blåhaj images and name/description
- `scripts` contains a few scripts I used to generate the final images. Generally the workflow is to run `./scripts/crop.sh` and then `./scripts/fade.sh` from this repository. See comments in each script for more on what they do. You need Python 3, ffmpeg, GNU parallel, and optionally optipng (comment out the lines that call it if you don't want to use it).
