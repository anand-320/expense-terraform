#!/bin/bash

sudo pip3.11 install ansible hvac &>>/opt/ansible.log
ansible-pull -i localhost, -U https://github.com/anand-320/expense-ansible.git get-secrets.yml -e env=${env} -e role_name=${component} -e vault_token=${vault_token} &>>/opt/ansible.log
ansible-pull -i localhost, -U https://github.com/anand-320/expense-ansible.git expense.yml -e env=${env} -e role_name=${component} -e @~/secrets.json -e only_deployment=false &>>/opt/ansible.log
