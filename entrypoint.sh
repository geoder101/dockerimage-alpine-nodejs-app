#!/bin/sh

set -e

OPT_INSTALL=1

while getopts "x" opt; do
    case $opt in
        x)
            OPT_INSTALL=0
            ;;
    esac
done

if [ $OPT_INSTALL -eq 1 ]; then
    npm install
fi

exec npm start
