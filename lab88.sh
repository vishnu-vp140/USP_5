#!/bin/sh
#program to count the number of lines words and characters in a file
echo "Enter file name"
read file
if ( file $file ); then
echo "file Exists"
echo "number of lines"
wc -l $file
echo "number of words:"
wc -w $file
echo "number of characters:"
wc -c $file
else
echo "File doesn't exist"
fi
