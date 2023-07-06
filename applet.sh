if [[ -f $(utils/ditra.sh "$RPATH") ]]; then
  $RPATH
else
  return 1
fi
