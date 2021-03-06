#!/bin/bash

# # `mpiuser` already exists at this stage
# USER=mpiuser1

# # sshd daemon runs in /var/run/sshd 

# # Add user and generate a random password with 12 characters that includes at least one capital letter and number.
# DOCKER_PASSWORD=`pwgen -c -n -1 12`
# echo User: mpiuser1 Password: $DOCKER_PASSWORD
# DOCKER_ENCRYPYTED_PASSWORD=`perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa"),"\n"'`

# useradd -m -d /home/${USER} -s /bin/bash -p $DOCKER_ENCRYPYTED_PASSWORD ${USER}
# echo Added user ${USER} with encrypted pwd

# sed -Ei "s/adm:x:4:/${USER}:x:4:${USER}/" /etc/group
# echo Added user ${USER} to group

# # adduser docker sudo


# debug-level info in syslog (/var/log/sshd)
echo "LogLevel DEBUG3" >> /etc/ssh/sshd_config

# Start the ssh service
/usr/sbin/sshd
echo Started sshd service

# cat /var/log/sshd
