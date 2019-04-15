#!/bin/bash
ansible-playbook -K -l localhost --vault-password-file /vagrant_data/vault_password decrypt.yml