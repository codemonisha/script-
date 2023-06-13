#!/bin/bash
ls | grep -i .html > output
while read line
do
        n=`echo $line | awk -F "." '{print $1}'`
        mv $line $n.txt
done < output
ls
