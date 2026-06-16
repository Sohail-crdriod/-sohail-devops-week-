#!/bin/bash

#A basic health check script 

NAME="Sohail"

echo "hello sir $NAME"
echo ""

echo "which of the following health checks you want to run?(disk,memory,all)"
read ANSWER

if [ "$ANSWER" = "disk" ]; then 
    echo""
    echo " disk space" 
    df -h 
elif [ "$ANSWER" = "memory" ]; then 
    echo""
    echo " memory " 
    free -h
elif  [ "$ANSWER" = "all" ]; then
     echo""
     echo " disk space"
     df -h
     
    echo""
    echo " memory "
    free -h 
  
    echo""
    echo " running processes"
    ps aux | head -10

else 
    echo" i dont understand can you please type disk,memory or all"
fi

echo""

echo "check complete.summary:"
for i in 1 2 3
do
    echo "  step $i done"
done

echo ""
echo "done"

echo""
echo "script done. check for any errors: $?"
