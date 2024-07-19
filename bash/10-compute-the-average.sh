#!/usr/bin/env bash


read n
awk -v n=$n '
    NR <= n { sum += $1; count++ }
    END { printf "%.3f\n", count ? sum/count : 0 }
'
