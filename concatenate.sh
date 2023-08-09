#!/bin/bash

folderPrefix="Volume1Chapter"
outputPrefix="chapter"

for chapter in $(ls -d $folderPrefix* 2>/dev/null)
do
    number=${chapter#$folderPrefix}
    echo "converting $chapter"
    montage -mode concatenate -tile 1x $chapter/*.jpg $outputPrefix$number.jpg
    
done
