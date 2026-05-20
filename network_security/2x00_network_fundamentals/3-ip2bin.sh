#!/bin/bash
IFS=. read -r a b c d <<< "$1"; out=""; for x in $a $b $c $d; do oct=""; for i in {7..0}; do oct+="$(( (x >> i) & 1 ))"; done; out+="$oct."; done; echo "${out%.}"
