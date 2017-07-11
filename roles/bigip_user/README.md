BIG-IP User Lab
=========

Modify the admin user with the bigip_user module to enable advnaced shell.

Directions
------------------
1. Copy the following to /home/snops/Ansible_SP/roles/bigip_user/tasks/main.yml
```
- name: Set the user 'admin' to advanced shell
  bigip_user:
      server: "{{ inventory_hostname }}"
      user: "{{ username }}"
      password: "{{ password }}"
      name: "admin"
      shell: "bash"
      state: "present"
  delegate_to: localhost
```

2. Create a playbook with the following contents to /home/snops/Ansible_SP/playbooks/bigip_user.yml
```
---
- name: bigip_user playbook
  hosts: all
  gather_facts: False
  roles:
    - bigip_user
...
```

4. Run the playbook with the following command from the /home/snops/Ansible_SP directory.
```
ansible-playbook playbooks/bigip_user.yml --ask-vault-pass -e @password.yml -vvv
```
