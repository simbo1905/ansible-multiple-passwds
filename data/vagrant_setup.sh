#/bin/bash
sudo yum install -y epel-release git
sudo yum install -y ansible
sudo chown vagrant /etc/ansible/hosts
cat << EOF > /etc/ansible/hosts
[local]
localhost ansible_connection=local
EOF
# the following isn't needed on tower which seems to magically default the password
echo "secret_password" > /vagrant_data/vault_password
ansible-playbook -K -l localhost playbook.yml
