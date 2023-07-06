#!/bin/sh
fn=$1
if [[ ! -f "$1" ]] 
then
  echo "Not found" | STATUS=404 ./response.sh
  return 0
fi
cat <<EOF
HTTP/1.1 $(grep "${STATUS:-"500"}" status.txt)
Server: ncsh
Keep-Alive: timeout=5, max=1000
Connection: Keep-Alive
Content-Length: $(du "$fn" -b | cut -f1)
Content-Type: $(utils/mime.sh "$(utils/ext.sh "$fn")")

EOF
cat "$fn"

