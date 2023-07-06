#!/bin/sh
grep "$1" mime.txt | cut -d" " -f1 | head -n 1
