Tags
=========
```
ansible-playbook playbooks/tags.yml --ask-vault-pass -e @password.yml -vvv --tags "add_node"
```


Skipping Tags
------------
```
ansible-playbook playbooks/tags.yml --ask-vault-pass -e @password.yml -vvv --skip-tags "add_node"
```
