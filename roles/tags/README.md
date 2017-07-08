Tags
=========


Skipping Tags
------------

```
ansible-playbook playbooks/tags.yml -u admin --key-file=/tom/.ssh/id_rsa_terraform --ask-vault-pass -e @password.yml -vvv --skip-tags "add_node"
```
