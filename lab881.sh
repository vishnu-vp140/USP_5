#!/bin/sh
IFS="|"
while echo "Enter department code:";do
read code
set -- `grep "^$code"<<DOC
01|Accounts|1234
02|Accounts|1235
03|Accounts|1236
DOC`
case $# in
3)echo "Dept name:$2 \nEmp-ID of head: $3"
shift 3;;
*)echo "Invalid code";;
esac 
done
