#!/bin/sh
source utils/std.sh
source utils/http.sh
buf=""
bufl=1
sth=$STILLHEADER #why?
head=""
[[ $STILLHEADER == 1 ]] && read STATUS
header
while read line
do
  ll=$(ech "$line" | wc -c)
  if [[ $sth == 1 ]] && [[ ! -z "$line" ]]; then
    ech "$line"
    printf "\n"
  elif [[ -z "$line" ]]; then
    sth=0
  else
    buf="$buf
$line"
  fi
done < "${1:-/dev/stdin}"

cat << EOF
Content-Length: $(expr ${#buf} - 1)$([[ $STILLHEADER != 1 ]] && printf "\n")
EOF
ech "$buf"
