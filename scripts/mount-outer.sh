#!/bin/bash
set -ex

source scripts/common.sh

# # Mount the inner volume
$VERACRYPT --text \
        --mount \
        --keyfiles "" \
        --pim=0 \
        --protect-hidden=yes \
        --protection-pim=0 \
        --protection-keyfiles "" \
        $VOLUME_PATH \
        /Volumes/vc