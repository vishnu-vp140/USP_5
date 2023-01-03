#!/bin/sh
#Shell Script to rename filename extension from txt to doc:
for file in *.txt;do
left=`basename $file txt`
mv $file ${left}doc
done
