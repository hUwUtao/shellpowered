#!/bin/sh
source utils/std.sh
source utils/fs.sh
rp="$1$RPATH"
b="$METHOD.$(basename "$rp")"
p="$(dirname "$rp")/$b"
if [[ -f $(ditra "$p" "$1") ]]; then
  $p | STATUS=200 ./response.sh
  return $?
else
  return 1
fi
