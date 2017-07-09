Tags
=========
If you have a large playbook it may become useful to be able to run a specific part of the configuration without running the whole playbook.

Both plays and tasks support a “tags:” attribute for this reason. You can ONLY filter tasks based on tags from the command line with --tags or --skip-tags. Adding “tags:” in any part of a play (including roles) adds those tags to the contained tasks.


Special Tags
------------
There is a special always tag that will always run a task, unless specifically skipped (--skip-tags always)
```
 - debug: msg="Always runs"
      tags:
        - always
```

Running Tags
------------
```
ansible-playbook playbooks/tags.yml --ask-vault-pass -e @password.yml -vvv --tags "add_node"
```

Skipping Tags
------------
```
ansible-playbook playbooks/tags.yml --ask-vault-pass -e @password.yml -vvv --skip-tags "add_node"
```
