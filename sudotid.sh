#!/bin/zsh

cp /etc/pam.d/sudo /tmp/sudotmp 
echo "auth sufficient pam_tid.so" > /tmp/sudotmp2
cat /tmp/sudotmp >> /tmp/sudotmp2
sudo mv /tmp/sudotmp2 /etc/pam.d/sudo
rm -r /tmp/sudotmp
rm -r /tmp/sudotmp2


exit 0
