#!/bin/bash
set -ex

source scripts/common.sh

# # Mount the inner volume
$VERACRYPT --text \
        --mount \
        --keyfiles "" \
        --protect-hidden=no \
        --pim=0 \
        $VOLUME_PATH \
        /Volumes/vc