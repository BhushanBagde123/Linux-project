#!/bin/bash
count =1;
while [ $count -lt 5 ]; do
    touch file$count.txt
     ((count++))
done
