#!/bin/bash

function organize_by_folders() {
    cd "$folder"
    for image in *.jpg *.JPG *.jpeg *.JPEG *.gif *.GIF *.bmp *.BMP *.png *.PNG;
    do
        res=$(identify -format %wx%h\\n "$image");
        mkdir -p "$res";
        mv "$image" "$res";
    done
}

for folder in "$@"
do
    if [ -d "$folder" ]
    then
        organize_by_folders "$folder"
    fi
done
