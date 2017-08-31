#!/usr/bin/bash

tar_file=$1

SCRATCH=$2

MainDr=$(pwd)
tar -xf $tar_file -C $SCRATCH


for j in $MainDr; do
    grep -l "DELETE ME!" $j | xargs rm -f
done

cd ..
tar -zcf cleaned_$tar_file
