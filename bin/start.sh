#!/bin/bash

USER=mpiuser1

# sshd daemon runs in /var/run/sshd 

# Add user and generate a random password with 12 characters that includes at least one capital letter and number.
DOCKER_PASSWORD=`pwgen -c -n -1 12`
echo User: mpiuser1 Password: $DOCKER_PASSWORD
DOCKER_ENCRYPYTED_PASSWORD=`perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa"),"\n"'`

useradd -m -d /home/${USER} -s /bin/bash -p $DOCKER_ENCRYPYTED_PASSWORD ${USER}


sed -Ei "s/adm:x:4:/${USER}:x:4:${USER}/" /etc/group

# adduser docker sudo


# Start the ssh service
/usr/sbin/sshd -D
