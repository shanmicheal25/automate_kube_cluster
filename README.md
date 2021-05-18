# Automate Kubenetes Cluster Creation
# Installation of Ansible in the Red Hat servers.

$ sudo useradd ansible \
$ echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible \
$ sudo su ansible \


# Terraform Installation

$ sudo su ansible \
$ sudo yum install wget unzip -y \ 
$ wget https://releases.hashicorp.com/terraform/0.15.3/terraform_0.15.3_linux_amd64.zip \
$ sudo unzip terraform_0.12.26_linux_amd64.zip -d /usr/local/bin \
$ export PATH=$PATH:/usr/local/bin \
$ vi .bashrc \
$ export PATH="$PATH:/usr/local/bin" \
$ source ~/.bashrc \

# Ansible Installation.

$ sudo yum install python3 -y \
$ sudo alternatives --set python /usr/bin/python3 \
$ sudo yum -y install python3-pip -y \
$ pip3 install ansible --user \
$ pip3 install boto3 --user \

# Permission to execute the python script 

chmod +x DynamicInventory.py \

# Need to configure the region..
$ vi ~/.aws/config \
 
[default] \
region=us-east-1 \


# Run using the below command.

$ ansible Kubernetes_Servers -i DynamicInventory.py -m ping --ssh-common-args="-o StrictHostKeyChecking=no" \

$ ansible Kubernetes_Servers -i DynamicInventory.py -m ping --ssh-common-args="-o StrictHostKeyChecking=no" -u ubuntu --private-key=./pratice_key.pem \

$ ansible-playbook -i DynamicInventory.py site.yml   -u ubuntu --private-key=./pratice_key.pem \

