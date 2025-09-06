#!/bin/bash

current_workspace=$(aerospace list-workspaces --focused)

case "$current_workspace" in
    # Row 1: 1 -> 5 -> 4 -> 3 -> 2 -> 1
    1) next_workspace="5" ;;
    2) next_workspace="1" ;;
    3) next_workspace="2" ;;
    4) next_workspace="3" ;;
    5) next_workspace="4" ;;
    # Row 2: Q -> T -> R -> E -> W -> Q
    Q) next_workspace="T" ;;
    W) next_workspace="Q" ;;
    E) next_workspace="W" ;;
    R) next_workspace="E" ;;
    T) next_workspace="R" ;;
    # Row 3: A -> G -> F -> D -> S -> A
    A) next_workspace="G" ;;
    S) next_workspace="A" ;;
    D) next_workspace="S" ;;
    F) next_workspace="D" ;;
    G) next_workspace="F" ;;
    # Row 4: Z -> B -> V -> C -> X -> Z
    Z) next_workspace="B" ;;
    X) next_workspace="Z" ;;
    C) next_workspace="X" ;;
    V) next_workspace="C" ;;
    B) next_workspace="V" ;;
    # Row 5: 7 -> 10 -> 9 -> 8 -> 7
    7) next_workspace="10" ;;
    8) next_workspace="7" ;;
    9) next_workspace="8" ;;
    10) next_workspace="9" ;;
    # Row 6: Y -> P -> O -> I -> U -> Y
    Y) next_workspace="P" ;;
    U) next_workspace="Y" ;;
    I) next_workspace="U" ;;
    O) next_workspace="I" ;;
    P) next_workspace="O" ;;
    # Row 7: N -> M -> N
    N) next_workspace="M" ;;
    M) next_workspace="N" ;;
    *) next_workspace="$current_workspace" ;;  # Default: stay on current workspace
esac

aerospace workspace "$next_workspace"
