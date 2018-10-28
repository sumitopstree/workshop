#ubuntu
sudo apt-get update && sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible


#centos
sudo yum install -y epel-release && sudo yum install -y ansible
