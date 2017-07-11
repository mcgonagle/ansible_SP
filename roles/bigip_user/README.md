BIG-IP User Lab
=========

Modify the admin user with the bigip_user module to enable advnaced shell.

Directions
------------------
1. Create the bigip_user role.
```
cd /home/snops/Ansible_SP/roles; ansible-galaxy init bigip_user
```

2. Copy the following to /home/snops/Ansible_SP/roles/bigip_user/tasks/main.yml
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

3. Create a playbook with the following contents to /home/snops/Ansible_SP/playbooks/bigip_user.yml
```
---
- name: bigip_user playbook
  hosts: all
  gather_facts: False
  roles:
    - bigip_user
...
```

4. Run the playbook with the following command.
```
ansible-playbook playbooks/bigip_user.yml --ask-vault-pass -e @password.yml -vvv
```
