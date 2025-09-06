#!/bin/bash

current_workspace=$(aerospace list-workspaces --focused)

case "$current_workspace" in
    # Row 1: 1 -> 2 -> 3 -> 4 -> 5 -> 1
    1) next_workspace="2" ;;
    2) next_workspace="3" ;;
    3) next_workspace="4" ;;
    4) next_workspace="5" ;;
    5) next_workspace="1" ;;
    # Row 2: Q -> W -> E -> R -> T -> Q
    Q) next_workspace="W" ;;
    W) next_workspace="E" ;;
    E) next_workspace="R" ;;
    R) next_workspace="T" ;;
    T) next_workspace="Q" ;;
    # Row 3: A -> S -> D -> F -> G -> A
    A) next_workspace="S" ;;
    S) next_workspace="D" ;;
    D) next_workspace="F" ;;
    F) next_workspace="G" ;;
    G) next_workspace="A" ;;
    # Row 4: Z -> X -> C -> V -> B -> Z
    Z) next_workspace="X" ;;
    X) next_workspace="C" ;;
    C) next_workspace="V" ;;
    V) next_workspace="B" ;;
    B) next_workspace="Z" ;;
    # Row 5: 7 -> 8 -> 9 -> 10 -> 7
    7) next_workspace="8" ;;
    8) next_workspace="9" ;;
    9) next_workspace="10" ;;
    10) next_workspace="7" ;;
    # Row 6: Y -> U -> I -> O -> P -> Y
    Y) next_workspace="U" ;;
    U) next_workspace="I" ;;
    I) next_workspace="O" ;;
    O) next_workspace="P" ;;
    P) next_workspace="Y" ;;
    # Row 7: N -> M -> N
    N) next_workspace="M" ;;
    M) next_workspace="N" ;;
    *) next_workspace="$current_workspace" ;;  # Default: stay on current workspace
esac

aerospace move-node-to-workspace "$next_workspace"
aerospace workspace "$next_workspace"
