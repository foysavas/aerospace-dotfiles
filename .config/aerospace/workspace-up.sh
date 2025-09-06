#!/bin/bash

current_workspace=$(aerospace list-workspaces --focused)

case "$current_workspace" in
    # 1 -> Z -> A -> Q -> 1
    1) next_workspace="Z" ;;
    Z) next_workspace="A" ;;
    A) next_workspace="Q" ;;
    Q) next_workspace="1" ;;
    # 2 -> X -> S -> W -> 2
    2) next_workspace="X" ;;
    X) next_workspace="S" ;;
    S) next_workspace="W" ;;
    W) next_workspace="2" ;;
    # 3 -> C -> D -> E -> 3
    3) next_workspace="C" ;;
    C) next_workspace="D" ;;
    D) next_workspace="E" ;;
    E) next_workspace="3" ;;
    # 4 -> V -> F -> R -> 4
    4) next_workspace="V" ;;
    V) next_workspace="F" ;;
    F) next_workspace="R" ;;
    R) next_workspace="4" ;;
    # 5 -> B -> G -> T -> 5
    5) next_workspace="B" ;;
    B) next_workspace="G" ;;
    G) next_workspace="T" ;;
    T) next_workspace="5" ;;
    # Vertical cycles (reverse): Y -> 7, U -> 8, I -> 9, O -> 10
    Y) next_workspace="7" ;;
    7) next_workspace="Y" ;;
    U) next_workspace="8" ;;
    8) next_workspace="U" ;;
    I) next_workspace="9" ;;
    9) next_workspace="I" ;;
    O) next_workspace="10" ;;
    10) next_workspace="O" ;;
    *) next_workspace="$current_workspace" ;;  # Default: stay on current workspace
esac

aerospace workspace "$next_workspace"
