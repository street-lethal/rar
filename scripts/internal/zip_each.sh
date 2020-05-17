#!/bin/sh

for file in `ls unzipped/ | grep -v .rar$`; do
    rar a zipped/$file.rar unzipped/$file
done
chown 1000:1000 -R zipped
