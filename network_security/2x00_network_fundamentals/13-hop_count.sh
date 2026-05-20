#!/bin/bash
traceroute "$1" | tail -1 | awk '{print $1}'
