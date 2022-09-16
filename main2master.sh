#!/bin/bash

echo creating branch master from main
git branch -m main master
git push -u origin master

link=`git remote -v | head -n 1 | sed 's/^[^http]*//' | sed 's/.git (fetch)/\/settings\/branches/'`
echo $'Go to\e[36m' $link $'\e[0mand swap default branch to master'
read -n 1 -p "Press any key to continue:" junk
git push origin --delete main