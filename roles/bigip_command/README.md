BIG-IP Command Lab
=========
Sends an arbitrary command to an BIG-IP node and returns the results read from the device. This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.


BIG-IP Command Syntax
---
```
# tasks file for bigip_command
- name: run multiple commands on remote nodes
  bigip_command
    commands:
      - show sys version
      - list ltm virtual
    server: "{{ inventory_hostname }}"
    user: "{{ username }}"
    password: "{{ password }}"
    validate_certs: "false"
  delegate_to: localhost
...
```


Run the playbook
------------
```
ansible-playbook playbooks/bigip_command.yml --ask-vault-pass -e @password.yml -vvv
```

Move the commands into the role default/main.yml file
------------
Move the "show sys version" and "list ltm virtual" commands into the default/main.yml variable file. 
Change the commands so that they are now variables.
