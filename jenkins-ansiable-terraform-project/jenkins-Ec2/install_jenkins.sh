#!/bin/bash
exec > >(tee -i /var/log/user-data.log)
exec 2>&1
sudo apt update -y
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo apt install git -y 
mkdir Ansible && cd Ansible
pwd
git clone https://github.com/Dineshkundo/Integration-with-jenkins-Ansiable-terraform_ci-cd-project.git
cd Integration-with-jenkins-Ansiable-terraform_ci-cd-project
ansible-playbook -i localhost Jenkins.yml
