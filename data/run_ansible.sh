#!/bin/bash
# the following isn't needed on tower which seems to magically default the password
echo "secret_password" > /vagrant_data/vault_password
ansible-playbook -K -l localhost playbook.yml --extra-vars '{"static_pass":["host_one","host_two"], host_one: "password1", host_two: "password2"}'
