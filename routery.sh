#!/bin/sh
source utils/std.sh
read -r METHOD TRAIL _
routf=${ROUTER:-"default_router.txt"}
while IFS= read -r ent
do
  if [[ "$PATH" == $(ech "$ent" | cut -d" " -f1) ]]; then
    echo "$TRAIL"
    if ! `SHE="ROUTER" \
      RPATH="$(ech "$TRAIL" | etch "?")" \
      QUERY="$(ech "$TRAIL" | chte "?")" source ./${ent#* }`; then
      break
    fi
  fi
done < "$routf"
