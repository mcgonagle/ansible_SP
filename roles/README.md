# Roles

[Introduction to Roles](http://docs.ansible.com/ansible/playbooks_roles.html)


## Roles Introduction
When you start to think about it – tasks, handlers, variables, and so on – begin to form larger concepts. You start to think about modeling what something is, rather than how to make something look like something. It’s no longer “apply this handful of THINGS to these hosts”, you say “these hosts are dbservers” or “these hosts are webservers”. In programming, we might call that “encapsulating” how things work. For instance, you can drive a car without knowing how the engine works.

Roles in Ansible build on the idea of include files and combine them to form clean, reusable abstractions – they allow you to focus more on the big picture and only dive down into the details when needed.

We’ll start with understanding includes so roles make more sense, but our ultimate goal should be understanding roles – roles are great and you should use them every time you write playbooks.

This designates the following behaviors, for each role ‘x’:

If roles/x/tasks/main.yml exists, tasks listed therein will be added to the play
If roles/x/handlers/main.yml exists, handlers listed therein will be added to the play
If roles/x/vars/main.yml exists, variables listed therein will be added to the play
If roles/x/defaults/main.yml exists, variables listed therein will be added to the play
If roles/x/meta/main.yml exists, any role dependencies listed therein will be added to the list of roles (1.3 and later)
Any copy, script, template or include tasks (in the role) can reference files in roles/x/{files,templates,tasks}/ (dir depends on task) without having to path them relatively or absolutely


Role default variables allow you to set default variables for included or dependent roles (see below). To create defaults, simply add a defaults/main.yml file in your role directory. These variables will have the lowest priority of any variables available, and can be easily overridden by any other variable, including inventory variables.



```
ansible-galaxy init role1
```

```
site.yml
webservers.yml
fooservers.yml
roles/
   common/
     files/
     templates/
     tasks/
     handlers/
     vars/
     defaults/
     meta/
   webservers/
     files/
     templates/
     tasks/
     handlers/
     vars/
     defaults/
     meta/
```
