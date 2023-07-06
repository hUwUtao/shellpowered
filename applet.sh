#!/bin/sh
source utils/std.sh
source utils/fs.sh
echo "$RPATH"
if [[ -f $(ditra "$RPATH") ]]; then
  $RPATH
else
  return 1
fi
