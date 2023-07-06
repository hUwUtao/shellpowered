#!/bin/sh
printf '%s' "$1" | awk -F. '{print (NF>1?$NF:"txt")}'
