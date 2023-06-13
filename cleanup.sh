#!/bin/bash
total=`ls  /var/lib/jenkins/workspace/job5 | wc -l` 
oldfiles=`expr $total - 20`
if [ $oldfiles -gt 0 ]
then
ls -rt | head -$oldfiles | xargs rm -rf
fi
