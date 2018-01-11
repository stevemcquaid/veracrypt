#!/bin/bash
set -ex

source scripts/common.sh

# Create hidden volume
# Make outer volume
$VERACRYPT --text \
    --create \
    --keyfiles "" \
    --pim=0 \
    --encryption "AES-Twofish-Serpent" \
    --hash "SHA-512" \
    --random-source /dev/urandom \
    --volume-type "Normal" \
    --filesystem "FAT" \
    --size "10M" \
    $VOLUME_PATH

# Make inner volume
$VERACRYPT --text \
    --create \
    --keyfiles "" \
    --pim=0 \
    --encryption "AES-Twofish-Serpent" \
    --hash "SHA-512" \
    --random-source /dev/urandom \
    --volume-type "Hidden" \
    --filesystem "FAT" \
    --size=2M \
    $VOLUME_PATH
