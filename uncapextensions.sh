#!/bin/bash

DIR=$1
EXT=$2

echo "Uncapitalizing ${EXT} extensions recursively starting at ${DIR}..."

find "$DIR" -type f -iname "*.${EXT}" -print0 | while read -r -d $'\0' file
do
   if [[ ! "$file" =~ .*\.${EXT}$ ]]
   then
      echo "Modifying ${file}..."
      mv "$file" "`echo "$file" | sed "s/\.${EXT}$/.${EXT}/I"`"
   fi
done
