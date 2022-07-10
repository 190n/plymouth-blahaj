#!/bin/bash

# run fade-one.py on every throbber image in parallel
find blåhaj -type f -name 'throbber-*.png' | parallel --bar --jobs $(nproc) ./scripts/fade-one.py
