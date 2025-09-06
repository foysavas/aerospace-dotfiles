#!/bin/bash

current_workspace=$(aerospace list-workspaces --focused)

case "$current_workspace" in
    # 1 -> Q -> A -> Z -> 1
    1) next_workspace="Q" ;;
    Q) next_workspace="A" ;;
    A) next_workspace="Z" ;;
    Z) next_workspace="1" ;;
    # 2 -> W -> S -> X -> 2
    2) next_workspace="W" ;;
    W) next_workspace="S" ;;
    S) next_workspace="X" ;;
    X) next_workspace="2" ;;
    # 3 -> E -> D -> C -> 3
    3) next_workspace="E" ;;
    E) next_workspace="D" ;;
    D) next_workspace="C" ;;
    C) next_workspace="3" ;;
    # 4 -> R -> F -> V -> 4
    4) next_workspace="R" ;;
    R) next_workspace="F" ;;
    F) next_workspace="V" ;;
    V) next_workspace="4" ;;
    # 5 -> T -> G -> B -> 5
    5) next_workspace="T" ;;
    T) next_workspace="G" ;;
    G) next_workspace="B" ;;
    B) next_workspace="5" ;;
    # Vertical cycles: 7 -> Y, 8 -> U, 9 -> I, 10 -> O
    7) next_workspace="Y" ;;
    Y) next_workspace="7" ;;
    8) next_workspace="U" ;;
    U) next_workspace="8" ;;
    9) next_workspace="I" ;;
    I) next_workspace="9" ;;
    10) next_workspace="O" ;;
    O) next_workspace="10" ;;
    *) next_workspace="$current_workspace" ;;  # Default: stay on current workspace
esac

aerospace move-node-to-workspace "$next_workspace"
aerospace workspace "$next_workspace"