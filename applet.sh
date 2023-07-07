#!/bin/sh
source utils/std.sh
source utils/fs.sh
rp="$1$RPATH"
b="$METHOD.$(basename "$rp")"
p="$(dirname "$rp")/$b"
if [[ -f $(ditra "$p" "$1") ]]; then
  # e=$(extof "$p")
  # if ! which "$e" &> /dev/null; then
  #   e=$(grep "$e" applets.txt | etch " ")
  # fi
  # echo $e
  $p | STILLHEADER=1 ./response.sh
  return $?
else
  return 1
fi
