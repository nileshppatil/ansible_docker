# ansible_docker
Repository myproject contains Go app Code
  -  https://github.com/nileshppatil/myproject.git
  
Repository ansible_docker contains all the playbooks and the roles required for the docker automation.

  - https://github.com/nileshppatil/ansible_docker.git
 


### Important Version 
### Note: Docker Server and Client API Versions needs to be same. 
Client: Version: 1.8.3
API version: 1.20
Go version: go1.4.2 
Git commit: f4bf5c7 
Built: Mon Oct 12 05:37:18 UTC 2015 
OS/Arch: linux/amd64

Server: Version: 1.8.3 
API version: 1.20 
Go version: go1.4.2 
Git commit: f4bf5c7 
Built: Mon Oct 12 05:37:18 UTC 2015 
OS/Arch: linux/amd64

### Tech

Jenkins Buld server is configured with All automation

* [web] - Job web
* [Ansible_automation] - job Ansible Automation
* [Nginx_Load_Balancing] - Nginx_Load_Balancing.

### Installation


```sh

Step 1 Clone the Repository

$ git clone https://github.com/nileshppatil/myproject.git 
$ git clone https://github.com/nileshppatil/ansible_docker.git

Step 2 Change Directory 

$ cd ansible_docker

Step 3

$ ansible-playbook -i inventory/hosts site.yml --user root --ask-pass
--or else--
$ ansible-playbook -i inventory/host site.yml --ask-pass --ask-become-pass
---Once Docker Containers are Created Follow Next Steps---

Step 4 Starting Jenkins Server

$ ansible-playbook -i inventory/hosts build.yml --user root --ask-pass 

Auto accept rsa key fingerprint from command line if you want avoid accepting key fingerprint
update your ~/.ssh/config
--------------------------------------------
Host 192.168.0.* 
StrictHostKeyChecking no
UserKnownHostsFile=/dev/null
--------------------------------------------
```
### URLS
Jenkins Url
    - http://192.168.0.9:9201/

Nginx Url
    - http://192.168.0.9:8801/


License
----

MIT
