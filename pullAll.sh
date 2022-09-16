#!/bin/bash

cd PATH_TO_BASE_FOLDER
for d in */ ; do
    cd ./"$d"
    echo $'\e[1;33m'"pulling $(pwd | sed 's#.*/##')"$'\e[0m'
    git pull
    cd ./..
done