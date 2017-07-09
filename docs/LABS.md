# Lab Exercises

1. [ansible.cfg](ansible.cfg)
2. [hosts](hosts)
  * Groups - It is suggested that you define groups based on purpose of the host (roles) and also geography or datacenter location
  * [host_vars](host_vars)
  * [group_vars](group_vars)
3. ansible-vault - [password.yml](password.yml)
4. [library](library)
  * ``` ansible-doc -M library bigip_node ```
  * [ReadtheDocs](https://f5-ansible.readthedocs.io/en/devel/modules/list_of_all_modules.html)
5. [run_ansible.sh](run_ansible.sh) helper script
6. [playbooks](playbooks)
7. [roles](roles)
8. [BIG-IP Command](roles/bigip_command)
9. [handlers](roles/handlers)
10. [Managing Variables](roles/variables)
11. Demo Enviroment
  * [Onboarding](roles/onboarding)
  * [Operations](roles/operations)
12. [Templating and Facts](roles/custom_facts)
13. [Tags](roles/tags)
14. [ansible galaxy](https://galaxy.ansible.com/)
15. [ansible tower](https://www.ansible.com/tower)
