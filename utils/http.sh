source utils/std.sh
function header {
cat <<EOF
HTTP/1.1 $(grep "${STATUS:-"500"}" status.txt)
Server: ncsh
Date: $(date -Ru | etch "+")GMT
Keep-Alive: timeout=5, max=1000
Connection: Keep-Alive
EOF
}
