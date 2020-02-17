#!/bin/bash

BR_FILES=/home/pr/public/mods/pr/demos

if [[ $(ls -1 $BR_FILES | wc -l) > 1 ]]; then
   files=($(ls -1 $BR_FILES | head -n-1))
   echo "movendo demos"
   cd $BR_FILES
   mv ${files[@]} /var/www/battlerecorder/server01/demos/
else
   echo "not enough files"
fi

exit

echo "movido"
echo "movendo trackers"
mv /home/pr/public/demos/*.PRdemo /var/www/battlerecorder/server01/trackers/
