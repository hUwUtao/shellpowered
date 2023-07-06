#!/bin/sh
source utils/std.sh
buf=""
bufl=0

while read line
do
	buf="$buf$line"
done < "${1:-/dev/stdin}"

header
cat << EOF
Content-Length: $(printf '%s' "$buf" | wc -c)

$buf
EOF
