#!/bin/bash

users=("bhushan" "raju" "faran" "rancho")
for user in "${users[@]}" do
    sudo useradd "$user"
    echo "user $user create"
done
