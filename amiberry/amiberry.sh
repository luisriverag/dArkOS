#!/usr/bin/env bash
pushd "/opt/amiberry/" >/dev/null

filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

if [[ $extension == "lha" ]]; then
   /opt/amiberry/amiberry --autoload "$1"
else
   /opt/amiberry/amiberry -G -0 "$1"
fi
