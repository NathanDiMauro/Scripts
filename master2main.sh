#!/bin/bash

echo creating branch main from master
git branch -m master main
git push -u origin main


echo $'\e[36mGo to github settings -> branches and swap default branch to master\e[0m'
read -n 1 -p "Press any key to continue:" junk
git push origin --delete master