#!/bin/sh
source utils/std.sh
source utils/http.sh
fn=$1
if [[ ! -f "$1" ]] 
then
  [ $ROUTER -eq 1 ] && `echo "Not found" | STATUS=404 ./response.sh`
  return 1
fi
header
cat <<EOF
Content-Length: $(du "$fn" -b | cut -f1)
Content-Type: $(mime "$fn")

EOF
cat "$fn"

