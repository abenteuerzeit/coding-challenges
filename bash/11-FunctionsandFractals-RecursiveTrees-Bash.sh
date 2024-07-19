#!/usr/bin/env bash

declare -A GRID

GRID_HEIGHT=63
GRID_WIDTH=100
INITIAL_BRANCH_LENGTH=16
INITIAL_BRANCH_ROW=63
INITIAL_BRANCH_COL=49


construct_fractal_tree() {
    local depth=$1
    local length=$2
    local row=$3
    local col=$4

    # Base case: if depth is 0, return
    if [[ $depth -eq 0 ]]; then
        return
    fi

    # Draw the vertical line of the current branch
    for ((i=length; i>0; i--)); do
        GRID[$((row-i)).$((col))]=1
    done

    # Update the starting row for the next recursive call
    ((row -= length))

    # Draw the left and right diagonals of the current branch
    for ((i=length; i>0; i--)); do
        GRID[$((row-i)).$((col-i))]=1
        GRID[$((row-i)).$((col+i))]=1
    done

    # Recursively draw the left and right sub-trees
    construct_fractal_tree $((depth-1)) $((length/2)) $((row-length)) $((col-length))
    construct_fractal_tree $((depth-1)) $((length/2)) $((row-length)) $((col+length))
}


print_fractal_tree() {
    for ((i=0; i<GRID_HEIGHT; i++)); do
        for ((j=0; j<GRID_WIDTH; j++)); do
            if [[ ${GRID[$((i)).$((j))]} ]]; then
                printf 1
            else
                printf _
            fi
        done
        echo
    done
}


read depth

construct_fractal_tree \
    $depth \
    $INITIAL_BRANCH_LENGTH \
    $INITIAL_BRANCH_ROW \
    $INITIAL_BRANCH_COL

print_fractal_tree
