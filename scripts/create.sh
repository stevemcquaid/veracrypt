#!/bin/bash
set -ex

source scripts/common.sh

# Create simple 10M FAT32 container
$VERACRYPT --text \
        --create $VOLUME_PATH \
        --filesystem "FAT" \
        --encryption "AES-Twofish-Serpent" \
        --hash "SHA-512" \
        --random-source /dev/urandom \
        --size "10M" \
        --keyfiles "" \
        --pim=0 \
        --volume-type "Normal"