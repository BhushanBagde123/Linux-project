#!/bin/bash

sudo yum install nginx -y
echo "nginx install"
sudo systemctl enable nginx
sudo systemctl start nginx
echo "nginx start"

users=("bhushan" "raju" "aman")

for user in "${users[@]}";do
        sudo useradd $user
        echo "user created ${user}"
         cat > /etc/sudoers.d/$user <<EOF
$user ALL=(ALL) NOPASSWD: /usr/bin/systemctl start nginx, /usr/bin/systemctl stop nginx, /usr/bin/systemctl restart nginx, /usr/bin/systemctl status nginx
EOF

   chmod 440 /etc/sudoers.d/$user
   echo " nginx permission to user ${user}"
done
        
