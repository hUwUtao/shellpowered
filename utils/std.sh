#!/bin/sh
PATH=$(pwd)/bin:$PATH
function ech {
  printf '%s' "$1"
}

function extof {
  ech "$1" | awk -F. '{print (NF>1?$NF:"txt")}'
}

function mime {
  grep "$1" mime.txt | cut -d" " -f1 | head -n 1
}
