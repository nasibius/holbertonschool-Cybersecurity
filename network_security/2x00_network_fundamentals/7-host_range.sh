#!/bin/bash
IFS=. read -r a b c d <<< "$1"; m=$((0xFFFFFFFF ^ ((1 << (32 - $2)) - 1))); ip=$(( (a<<24) | (b<<16) | (c<<8) | d )); net=$((ip & m)); bcast=$((ip | (0xFFFFFFFF ^ m))); echo "$(( (net>>24)&255 )).$(( (net>>16)&255 )).$(( (net>>8)&255 )).$(( (net+1)&255 )) - $(( (bcast>>24)&255 )).$(( (bcast>>16)&255 )).$(( (bcast>>8)&255 )).$(( (bcast-1)&255 ))"
