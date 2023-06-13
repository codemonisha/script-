#!/bin/bash
total=`df -h . | awk -F " " '{print $(NF-1)}' | sed 's/%//Ig' `
oldfile= `expr $total - 20`
if [  $oldfile  -gt  0  ]
then 
ls -lrt | xargs rm -rf 
fi 
