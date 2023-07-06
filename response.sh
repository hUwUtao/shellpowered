#!/bin/sh
buf=""
bufl=0

while read line
do
	buf="$buf$line"
done < "${1:-/dev/stdin}"

cat << EOF
HTTP/1.1 $(grep "${STATUS:-"500"}" status.txt)
Server: ncsh
Keep-Alive: timeout=5, max=1000
Connection: Keep-Alive
Content-Length: $(printf '%s' "$buf" | wc -c)

$buf
EOF
