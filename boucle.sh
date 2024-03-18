#!/usr/bin/bash
for f in /etc/*
do
    if [ -r "$f" ]; then
        echo "$f"
    fi
done
