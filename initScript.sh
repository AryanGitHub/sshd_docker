#!/bin/bash
# user for ssh
useradd -m -r -u 3141 -p $(mkpasswd --hash=SHA-512 thisispassword4docker) dockerSshUser
#thisispassword4docker


#replace sshd_config
cp ./sshd_config /etc/ssh/sshd_config

#enable sshd
service ssh start
