BIG-IP Command Lab
=========


Run the playbook
------------
```
ansible-playbook playbooks/bigip_command.yml -u admin --key-file=/tom/.ssh/id_rsa_terraform --ask-vault-pass -e @password.yml -vvv
```
