Variables Lab
=========

One of the trickier aspects of Ansible is variable precedence. This lab is meant to introduce variable precedence and demonstrate where to put variables in the MVP, why we put them there, and when to put a particular varialbe in a particular spot.

Variable Precedence
------------

We have six places to put a variable in the Ansible best practices MVP. In order of precedence they are:

* role defaults
* host_vars
* group_vars
* playbooks
* role vars
* include vars
* extra vars passed in at the command line 

Print Variables - Debug Statement
------------

```
- debug:
    msg: "{{ defaults_var }}"
```

Run the ansible-playbook Command to Print the Variables
------------

```
ansible-playbook playbooks/variables.yml -vvv --e extra_var="extra_var"
```
