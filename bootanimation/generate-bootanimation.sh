#!/bin/bash

WIDTH="$1"
HEIGHT="$2"
HALF_RES="$3"
BOOTPICK="$4"
OUT="$ANDROID_PRODUCT_OUT/obj/BOOTANIMATION"


#####
# This is the main AICP code but closed to an if because we want to make a variable
# to declare a fixed bootanimation. Ideal for those who want a certain style or stick
# to our classic and ugly bootanimation. 
#
# By now the current designs to declare are:
#   0: Classic bootanimation
#   1: Classic bootanimation but without the "Provided by team bootleggers" and go straight to the loop.
#
#####
if [ -z "$BOOTPICK" ]; then
    RANDOM_BOOT=$(shuf -i 0-1 -n 1)
    echo "Info: bootanimation was chosen randomly. The chosen one is the number $RANDOM_BOOT"
else
    RANDOM_BOOT="$BOOTPICK"
    echo "Info: bootanimation was chosen manually. The chosen one is the number $RANDOM_BOOT"
fi


if [ -z "$WIDTH" ]; then
    echo "Warning: bootanimation width not specified"
    WIDTH="1080"
fi

if [ -z "$HEIGHT" ]; then
    echo "Warning: bootanimation height not specified"
    HEIGHT="1080"
fi

if [ "$HEIGHT" -lt "$WIDTH" ]; then
    SIZE="$HEIGHT"
else
    SIZE="$WIDTH"
fi

if [ "$HALF_RES" = "true" ]; then
    IMAGESIZE=$(expr $SIZE / 2)
else
    IMAGESIZE="$SIZE"
fi

RESOLUTION=""$IMAGESIZE"x"$IMAGESIZE""

for part_cnt in 0 1 2
do
    mkdir -p $ANDROID_PRODUCT_OUT/obj/BOOTANIMATION/bootanimation/part$part_cnt
done
tar xfp "vendor/bootleggers/bootanimation/bootanimation$RANDOM_BOOT.tar" --to-command="convert - -resize '$RESOLUTION' -colors 250 \"png8:$OUT/bootanimation/\$TAR_FILENAME\""

# Create desc.txt
echo "$SIZE $SIZE" 30 > "$OUT/bootanimation/desc.txt"
cat "vendor/bootleggers/bootanimation/desc.txt" >> "$OUT/bootanimation/desc.txt"

# Create bootanimation.zip
cd "$OUT/bootanimation"

zip -qr0 "$OUT/bootanimation.zip" .