#!/bin/bash
###
# Getting variables from the makefile
###
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
#   2: Attempt of glitch made by us, bad attempt but it's clean anyways
#   3: After effects reveal template: It's a template, more than that what do you expect?
#   4: After effects reveal template (alternative): Another template but it got a circle except of lines and more glitching at the end.
#
#####
if [ -z "$BOOTPICK" ]; then
    RANDOM_BOOT=$(shuf -i 0-4 -n 1)
    echo "Info: bootanimation was chosen randomly. The chosen one is the number $RANDOM_BOOT"
else
    if [ $BOOTPICK -lt -1 ] || [ $BOOTPICK -gt 5 ]; then
        echo "ERROR: The declared value isn't on the bootanimation list bounds. Please refer to generate-bootanimation.sh to see the values"
        exit 1
    else
        RANDOM_BOOT="$BOOTPICK"
        echo "Info: bootanimation was chosen manually. The chosen one is the number $RANDOM_BOOT"
    fi
fi

case "$RANDOM_BOOT" in
    [0-1])
        BOOTFPS="30"
        ISQUARE="true"
    ;;

    2)
        BOOTFPS="48"
        ISQUARE="true"
    ;;

    [3-4])
        BOOTFPS="50"
        ISQUARE="false"
    ;;

    *)
        echo "Info: Something went wrong at the time of taking the number."
esac

###
# This is the size declaration and adjustments acording a TARGET_BOOTANIMATION_HALF_RES
###

if [ -z "$WIDTH" ]; then
    echo "Warning: bootanimation width not specified"
    WIDTH="1080"
fi
 if [ -z "$HEIGHT" ]; then
    echo "Warning: bootanimation height not specified"
    HEIGHT="1080"
fi

if [ "$HEIGHT" -lt "$WIDTH" ]; then
    SQUARESIZE="$HEIGHT"
else
    SQUARESIZE="$WIDTH"
fi

if [ "$HALF_RES" = "true" ] && [ "$ISQUARE" = "true" ]; then
    IMAGESIZEH=$(expr $SQUARESIZE / 2)
    IMAGESIZEW=$(expr $SQUARESIZE / 2)
elif [ "$HALF_RES" = "true" ] && [ "$ISQUARE" = "false" ]; then
    IMAGESIZEH=$(expr $HEIGHT / 2)
    IMAGESIZEW=$(expr $WIDTH / 2)
elif [ "$ISQUARE" = "true" ]; then
    IMAGESIZEH="$SQUARESIZE"
    IMAGESIZEW="$SQUARESIZE"
else
    IMAGESIZEH="$HEIGHT"
    IMAGESIZEW="$WIDTH"
fi

RESOLUTION=""$IMAGESIZEW"x"$IMAGESIZEH""

for part_cnt in 0 1 2
do
    mkdir -p $ANDROID_PRODUCT_OUT/obj/BOOTANIMATION/bootanimation/part$part_cnt
done
tar xfp "vendor/bootleggers/bootanimation/bootanimation$RANDOM_BOOT.tar" --to-command="convert - -resize '$RESOLUTION' -colors 250 \"png8:$OUT/bootanimation/\$TAR_FILENAME\""

# Create desc.txt
echo "$IMAGESIZEW $IMAGESIZEH" "$BOOTFPS" > "$OUT/bootanimation/desc.txt"
cat "vendor/bootleggers/bootanimation/desc.txt" >> "$OUT/bootanimation/desc.txt"

# Create bootanimation.zip
cd "$OUT/bootanimation"

zip -qr0 "$OUT/bootanimation.zip" .