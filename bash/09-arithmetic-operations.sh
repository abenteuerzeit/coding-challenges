#!/usr/bin/env bash


read expression
result=$(echo $expression | bc -l)
echo $(printf "%.3f" $result)

