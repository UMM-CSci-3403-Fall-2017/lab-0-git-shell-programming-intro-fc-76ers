#!/usr/bin/bash

num=$1
tar_file=$2

tar -xf NthPrime.tgz -C $tar_file
cd $tar_file

cd $tar_file/NthPrime

gcc -o NthPrime *.c

./NthPrime $1
