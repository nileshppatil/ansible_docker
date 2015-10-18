# ansible_docker
Repository myproject contains Go app Code
https://github.com/nileshppatil/myproject.git

Repository ansible_docker contains all the playbooks and the roles required for the docker automation.
https://github.com/nileshppatil/ansible_docker.git

Note: Docker  Server and Client API Versions needs to be same.
Client:
 Version:      1.8.3
 API version:  1.20
 Go version:   go1.4.2
 Git commit:   f4bf5c7
 Built:        Mon Oct 12 05:37:18 UTC 2015
 OS/Arch:      linux/amd64

Server:
 Version:      1.8.3
 API version:  1.20
 Go version:   go1.4.2
 Git commit:   f4bf5c7
 Built:        Mon Oct 12 05:37:18 UTC 2015
 OS/Arch:      linux/amd64


In ansible_docker inventories/hosts and nginx_conf/default.conf update the 192.168.0.9 to which ever host ip

  -1. Needs to mention the Docker host where the docker containers needs to spin up.(existing ip 192.168.0.9)
  -2. Ports are pre-defined, if you want to change you can change in *_infra.yml as per the avalaibilty.

############Docker Container Creation##############

App server count=2 

Build server count=1

Web server count=1

###################################################

#######If you have direct root access the host

ansible-playbook -i inventory/hosts site.yml --user root --ask-pass

or else

ansible-playbook -i inventory/host site.yml  --ask-pass  --ask-become-pass

##########if you want debug or verbose output command 
ansible-playbook -i inventory/host site.yml --user root --ask-pass -vvvv

or else

ansible-playbook -i inventory/host site.yml --user < any user >  --ask-pass --become-user --ask-become-pass -vvvv

########################################################
Starting Jenkins Server

ansible-playbook -i inventory/hosts build.yml  --user root --ask-pass -vvvv

######################################################
Auto accept rsa key fingerprint from command line

update your

~/.ssh/config

Host 192.168.0.*
   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null

############################

Jenkins Buld server is configured with All automation

1. Job web 

2. job Ansible Automation

3. Nginx_Load_Balancing.
 
##################
Jenkins Url

http://192.168.0.9:9201/
##############
Nginx Url

http://192.168.0.9:8801/
