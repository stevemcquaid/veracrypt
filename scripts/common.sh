#!/bin/bash
set -ex

source config.cfg

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    VERACRYPT="/usr/bin/veracrypt"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    VERACRYPT="/Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt"
fi
