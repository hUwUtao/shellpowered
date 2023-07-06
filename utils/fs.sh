function ditra {
  b=$(realpath "$1")
  if [[ "$b" == "$(realpath "$2")"* ]]; then 
    ./ech "$b" 
  else 
    printf ""
  fi 
}
