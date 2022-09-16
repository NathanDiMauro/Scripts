#!/bin/bash

echo creating branch main from master
git branch -m master main
git push -u origin main

link=`git remote -v | head -n 1 | sed 's/^[^http]*//' | sed 's/.git (fetch)/\/settings\/branches/'`
echo $'Go to\e[36m' $link $'\e[0mand swap default branch to master'
read -n 1 -p "Press any key to continue:" junk
git push origin --delete master