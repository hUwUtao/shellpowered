#!/bin/sh

read -r METHOD RPATH _
routf=${ROUTER:-"default_router.txt"}
while IFS= read -r ent
do
  if [[ "$PATH" == $(utils/ech "$ent" | cut -d" " -f1) ]]; then
    if ! ./${ent#* }; then
      break
    fi
  fi
done < "$routf"
