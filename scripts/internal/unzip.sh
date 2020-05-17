#!/bin/sh

unrar e zipped/*.rar unzipped/
chown 1000:1000 -R unzipped
