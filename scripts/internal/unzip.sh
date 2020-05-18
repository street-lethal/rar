#!/bin/sh

for file in `ls zipped/ | grep .rar$`; do
    mkdir unzipped/$file
    unrar e $@ zipped/$file unzipped/$file
done
chown 1000:1000 -R unzipped
