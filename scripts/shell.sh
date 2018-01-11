#!/bin/bash
set -ex

source scripts/common.sh

PASS=pass
PASS2=secret

docker run -it --privileged -v $MAC_VOLUME_MOUNT:$DOCKER_VOLUME_MOUNT --rm stevemcquaid/veracrypt:latest /bin/bash

# # Create simple 10M FAT32 container
# $VERACRYPT --text \
#         --create $VOLUME_PATH \
#         --filesystem "FAT" \
#         --encryption "AES-Twofish-Serpent" \
#         --hash "SHA-512" \
#         --password="testtest" \
#         --random-source /dev/urandom \
#         --size "10M" \
#         --volume-type "Normal" \
#         --non-interactive 
    
# # Mount the volume anywhere
# $VERACRYPT --text \
#         --mount \
#         --keyfiles "" \
#         --password testtest \
#         --non-interactive \
#         $VOLUME_PATH

# # Mount the volume specific location
# $VERACRYPT --text \
#         --mount \
#         --keyfiles "" \
#         --protect-hidden=no \
#         --password testtest \
#         --non-interactive \
#         $VOLUME_PATH \
#         /Volumes/vc1 

# # Create hidden volume
# # Make outer volume
# $VERACRYPT --text --create --keyfiles '' --pim=0 --encryption=aes --hash=sha-512 --random-source=/dev/urandom --volume-type=normal --filesystem=FAT --password $PASS --size=10M $VOLUME_PATH
# # Make inner volume
# $VERACRYPT --text --create --keyfiles "" --pim=0 --encryption=aes --hash=sha-512 --random-source=/dev/urandom --volume-type=hidden --filesystem=FAT --password $PASS2 --size=2M $VOLUME_PATH


# # Mount the inner volume
# $VERACRYPT --text \
#         --mount \
#         --keyfiles "" \
#         --password $PASS2 \
#         --non-interactive \
#         $VOLUME_PATH


# # Mount the outer volume, while protecting inner volume
# $VERACRYPT --text \
#         --mount \
#         --keyfiles "" \
#         --protect-hidden=yes \
#         --protection-keyfiles "" \
#         --protection-password $PASS2 \
#         --password $PASS \
#         --non-interactive \
#         $VOLUME_PATH