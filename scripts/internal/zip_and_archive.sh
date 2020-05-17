#!/bin/sh

ls unzipped/ | grep -v .rar$ | xargs rar a $@ zipped/all.rar
chown 1000:1000 -R zipped
