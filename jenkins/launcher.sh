#!/bin/bash
if [ ! -f /opt/scheduled/.deploy.lock ]
then
    echo "deployment in process, skipping run"
else
    echo "for i in `ls /opt/scheduled/*.jar | sort | tail -n 1`"; do java -jar $i Base; done 
fi
