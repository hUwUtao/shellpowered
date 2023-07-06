#!/bin/sh
source utils/std.sh
source utils/fs.sh
p="$1$RPATH"
if [[ -f $(ditra "$p" "$1") ]]; then
  $p | STATUS=200 ./response.sh
  return $?
else
  return 1
fi
