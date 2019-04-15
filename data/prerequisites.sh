#/bin/bash
sudo yum install -y epel-release git
sudo yum install -y ansible
sudo chown vagrant /etc/ansible/hosts
cat << EOF > /etc/ansible/hosts
[local]
localhost ansible_connection=local
EOF

