#!/bin/sh
source utils/std.sh
read -r METHOD TRAIL _
routf=${ROUTER:-"default_router.txt"}
while IFS= read -r ent
do
  if [[ "$PATH" == $(ech "$ent" | cut -d" " -f1) ]]; then
    SHE="ROUTER"
    CMD="./${ent#* }"
    RPATH="${TRAIL%*\?}" \
    QUERY="${TRAIL##\?*}" \
    source $CMD
    if [ "$?" -eq "0" ]; then
      break
    fi
  fi
done < "$routf"
