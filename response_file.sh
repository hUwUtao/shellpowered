#!/bin/sh
source utils/std.sh
source utils/http.sh
fn=$1
if [[ ! -f "$1" ]] 
then
  echo "Not found" | STATUS=404 ./response.sh
  return 0
fi
header
cat <<EOF
Content-Length: $(du "$fn" -b | etch " ")
Content-Type: $(mime "$fn")

EOF
cat "$fn"

