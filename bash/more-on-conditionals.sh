#!/usr/bin/env bash

read -r x
read -r y
read -r z

if [[ $x -eq $y && $y -eq $z ]]
then
    echo "EQUILATERAL"
elif [[ $x -eq $y || $y -eq $z || $z -eq $x ]]
then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi

