#!/bin/bash

echo creating branch master from main
git branch -m main master
git push -u origin master


echo $'\e[36mGo to github settings -> branches and swap default branch to master\e[0m'
read -n 1 -p "Press any key to continue:" junk
git push origin --delete main