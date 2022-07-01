#!/bin/sh
if [ $1 ]
    then
        while read line; do
            fullpath=$1$line 
            filename=${fullpath##*/}
            compare_to=files/$filename
            if [ -f $compare_to ]
                then
                echo $filename
                bcompare $fullpath $compare_to
            fi  
        done <"filepathlist"
fi

