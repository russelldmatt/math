#!/bin/bash

file="$(date "+%Y-%m-%d")-round-$(find . -type f | egrep -o 'round-[0-9]*' | awk -F '-' '{print $2}' | sort -n | tail -1  | awk '{print $0 + 1}').markdown"

touch $file
echo $file
