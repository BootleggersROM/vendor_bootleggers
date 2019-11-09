#!/bin/bash
echo "Welcome to the automatic lazy script to generate wallpapers, have fun!"
echo "REMEMBER: The image size will need to be on the following resolution: 1755x3120!"
IMGURL=$1
#LONGBOI=$2
if [[ -z $IMGURL ]]; then
    echo "FAILED: You have to specify the image URL, else i can't do anything."
    exit
fi
#if [[ -z $LONGBOI ]]; then
#    echo "WARNING: You have to set true or false, in case you want the 18:9 screen ratio. For now, it's set to 16:9 resolution."
#    LONGBOI=false
#fi
sleep 5

function startWallMagic () {
res0w=540
res1w=720
res2w=1080
res3w=1440
if [[ $LONGBOI = "true" ]]; then
    echo "Preparing the 18:9 format images! Get your long boi ready!"
    res0h=1170
    res1h=1560
    res2h=2340
    res3h=3120
    workdir=$(dirname "$0")/../overlay/wallpaper/widebois/frameworks/base/core/res/res
else 
    echo "Preparing the 16:9 format images! Get your average phone ready."
    res0h=960
    res1h=1280
    res2h=1920
    res3h=2560
    workdir=$(dirname "$0")/../overlay/wallpaper/common/frameworks/base/core/res/res
fi
res0="${res0w}x${res0h}"
res1="${res1w}x${res1h}"
res2="${res2w}x${res2h}"
res3="${res3w}x${res3h}"

# remove Workspace folder if it already exists
if [[ -d ${workdir} ]]; then
    rm -rf ${workdir}
fi
mkdir ${workdir}
for foldername in "${imgdirs[@]}";
    do mkdir -p ${workdir}/drawable-$foldername;
done

# Imagemagick generation part
for foldername in "${imgdir0[@]}";
    do $(dirname "$0")/../../../prebuilts/tools-bootleg/linux-x86/bin/mogrify $IMGURL -strip -colors 255 -quality 55 -resize $res0^ -gravity center -crop $res0+0+0 +repage ${workdir}/drawable-$foldername/default_wallpaper.png;
done
for foldername in "${imgdir1[@]}";
    do $(dirname "$0")/../../../prebuilts/tools-bootleg/linux-x86/bin/mogrify $IMGURL -strip -colors 255 -quality 55 -resize $res1^ -gravity center -crop $res1+0+0 +repage ${workdir}/drawable-$foldername/default_wallpaper.png;
done
for foldername in "${imgdir2[@]}";
    do $(dirname "$0")/../../../prebuilts/tools-bootleg/linux-x86/bin/mogrify $IMGURL -strip -colors 255 -quality 55 -resize $res2^ -gravity center -crop $res2+0+0 +repage ${workdir}/drawable-$foldername/default_wallpaper.png;
done
for foldername in "${imgdir3[@]}";
    do $(dirname "$0")/../../../prebuilts/tools-bootleg/linux-x86/bin/mogrify $IMGURL -strip -colors 255 -quality 55 -resize $res3^ -gravity center -crop $res3+0+0 +repage ${workdir}/drawable-$foldername/default_wallpaper.png;
done
}

# Levels for image size generation. This will go in the following orders:
#       0: Smallest size, 540x960 / 540x1170
#       1: Normal screen size, 720x1280 / 720x1560
#       2: Full res screen size, 1080x1920 / 1080x2340
#       3: Max res screen size, 1440x2560 / 1440x3120
imgdir0=(hdpi)
imgdir1=(xhdpi sw600dp-nodpi)
imgdir2=(xxhdpi nodpi)
imgdir3=(xxxhdpi sw720dp-nodpi)
imgdirs=(${imgdir0[@]} ${imgdir1[@]} ${imgdir2[@]} ${imgdir3[@]})

LONGBOI=false
startWallMagic
LONGBOI=true
startWallMagic
echo "lmao, check your folders now"
