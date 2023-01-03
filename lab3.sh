#!/bin/sh
case $# in
0|1)echo "Usage :$0 file pattern(s)"
exit 2;;
*)filename =$1
shift
for pattern in "$@";do
grep "$pattern" $filename ||
echo "pattern not found"
done;;
esac
