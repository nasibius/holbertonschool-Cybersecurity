#!/bin/bash
out=""; for i in {7..0}; do out+="$(( ($1 >> i) & 1 ))"; done; echo "$out"
