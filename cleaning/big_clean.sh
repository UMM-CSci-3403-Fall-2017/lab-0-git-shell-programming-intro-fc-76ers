#!/usr/bin/bash
#Charles Menne and Jacob Sphatt


# First argument tgz file
tar_file=$1

# Second argument scratch directory
scratch=$2

# Copies the tar_file which then stores it as the Main variable
Main=$(echo $tar_file | cut -f1 -d  '.')

# Start directory
here=$(pwd)

# Extracts the contents of the tar_file into the scratch directory
tar -xzf $tar_file -C $scratch

# Changes into the scratch directory
cd $scratch

# Finds and Removes all the files containing "DELETE ME!"
rm `grep -lir "DELETE ME!" $Main`

# Creates the new clean tar_file
tar -czf cleaned_$tar_file $Main

# Moves the cleaned tar_archive from the scratch directory into the clean files
mv cleaned_$tar_file $here

