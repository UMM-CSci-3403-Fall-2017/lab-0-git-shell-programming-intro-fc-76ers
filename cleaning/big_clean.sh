#!/usr/bin/bash

tar_file=$1

SCRATCH=$2

tar -xf $tar_file -C $SCRATCH

grep -lrZ "DELETE ME!" . | xargs -0 rm -f --

