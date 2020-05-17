#!/bin/sh

unrar e zipped/*.part1.rar unzipped/
chown 1000:1000 -R unzipped
