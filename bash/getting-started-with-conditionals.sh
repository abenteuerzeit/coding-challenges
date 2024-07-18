#!/usr/bin/env bash

read -r -n 1 char

char=$(echo "$char" | tr '[:lower:]' '[:upper:]')

case "$char" in
    "Y") echo "YES";;
    "N") echo "NO";;
esac

