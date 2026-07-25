#!/bin/bash
groups=("dev" "QA" "admin")
for group in "${groups[@]}";do
 sudo groupadd $group
 echo "$group is created"
 done
 
