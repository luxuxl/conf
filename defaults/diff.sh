#!/bin/bash

echo -n -e "\033[1m❓ Insert diff name (to store it for future usage)\033[0m "
read name
name=${name:-default}
echo -e "\033[1mSaving plist files to '$(pwd)/temp/${name}' folder.\033[0m"

mkdir -p temp/$name
defaults read > temp/$name/old.plist
defaults -currentHost read > temp/$name/host-old.plist

echo -e "\n\033[1m⏳ Change settings and press any key to continue\033[0m"

read -n 1 -s -r
defaults read > temp/$name/new.plist
defaults -currentHost read > temp/$name/host-new.plist

echo -e "\033[1m➡️ Here is your diff\033[0m\n\n"
git --no-pager diff --no-index temp/$name/old.plist temp/$name/new.plist
echo -e '\n\n\033[1m➡️ and here with the `-currentHost` option\n\n'
git --no-pager diff --no-index temp/$name/host-old.plist temp/$name/host-new.plist

echo -e "\n\n\033[1m🔮 Commands to print the temp again\033[0m"
echo -e "$ git --no-pager diff --no-index temp/${name}/old.plist temp/${name}/new.plist"
echo -e "$ git --no-pager diff --no-index temp/${name}/host-old.plist temp/${name}/host-new.plist"
