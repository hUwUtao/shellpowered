source utils/std.sh
source utils/fs.sh
p="$1$RPATH"
if [[ -f $(ditra "$p" $1) ]]; then
  ROUTER=1 STATUS=200 ./response_file.sh "$p"
  return $?
else
  return 1
fi
