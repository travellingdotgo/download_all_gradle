#!/bin/bash

#Recursively traverse the Directories and
#Print the file contents inside those directories.

function traverseDirectory(){
    for fileName in `ls $1/`
    do
    if [ $fileName = $2 ]; then
        mv $1/$fileName $1/$3
        echo $1/$fileName"->"$1/$3
        fileName=$3
        echo $fileName
    fi

    if [ -f $1/$fileName ]; then
        #echo $1/$fileName
        gsed -i 's/'$2'/'$3'/g' $1/$fileName
    fi
		
    if [ -d $1/$fileName ]; then
        #echo $1/$fileName
        traverseDirectory "$1/$fileName" $2 $3
    fi
    
    done
}

traverseDirectory $1 $2 $3


# bash ~/Desktop/RecursiveDirectoryFilePrintContent.sh . templatecom moredian
# bash ~/Desktop/RecursiveDirectoryFilePrintContent.sh . templateapp testguardian

