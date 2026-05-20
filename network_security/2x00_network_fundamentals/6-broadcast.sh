#!/bin/bash
IFS=. read -r a b c d <<< "$1"; IFS=. read -r e f g h <<< "$2"; printf "%s" "$((a | (e ^ 255))).$((b | (f ^ 255))).$((c | (g ^ 255))).$((d | (h ^ 255)))"
