#!/bin/bash

# just calling crop-one.sh on every PNG in frames/
find frames -type f -name '*.png' | parallel --bar --jobs $(nproc) ./scripts/crop-one.sh
