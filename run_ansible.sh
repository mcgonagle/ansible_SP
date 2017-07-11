#!/bin/bash

while test $# -gt 0; do
        case "$1" in
                -h|--help)
                        echo " "
                        echo "options:"
                        echo "-h, --help                show brief help"
                        echo "-a, --all                 run the site playbook"
                        echo "-c, --custom              run the custom_facts playbook"
                        echo "-n, --onboarding          run the onboarding playbook"
                        echo "-o, --operation           run the operation playbook"
                        echo "-p, --ping                run the ping command"
                        echo "-s, --setup               run the setup command"
                        echo "-t, --teardown            run the teardown playbook"
                        exit 0
                        ;;
                -n)
                        shift
                        ansible-playbook playbooks/onboarding.yml --ask-vault-pass -e @password.yml -vvv 
                        shift
                        ;;
                --onboarding*)
                        ansible-playbook playbooks/onboarding.yml --ask-vault-pass -e @password.yml -vvv 
                        shift
                        ;;
                -p)
                        ansible all -m ping -u admin --key-file=/home/snops/Ansible_SP/misc/id_rsa
                        shift
                        ;;
                --ping)
                        ansible all -m ping -u admin --key-file=/home/snops/Ansible_SP/misc/id_rsa
                        shift
                        ;;
                -s)
                        ansible all -m setup -u admin --key-file=/home/snops/Ansible_SP/misc/id_rsa
                        shift
                        ;;
                --setup)
                        ansible all -m setup -u admin --key-file=/home/snops/Ansible_SP/misc/id_rsa
                        shift
                        ;;
                -c)
                        ansible-playbook playbooks/custom_facts.yml -u admin --key-file=/home/snops/Ansible_SP/misc/id_rsa --ask-vault-pass -e @password.yml -vvv
                        shift
                        ;;
                --custom)
                        ansible-playbook playbooks/custom_facts.yml -u admin --key-file=/home/snops/Ansible_SP/misc/id_rsa --ask-vault-pass -e @password.yml -vvv
                        shift
                        ;;
                -o)
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                --operation*)
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                -t)
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="absent" -vvv 
                        shift
                        ;;
                --teardown*)
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="absent" -vvv 
                        shift
                        ;;
                -a)
                        ansible-playbook playbooks/onboarding.yml --ask-vault-pass -e @password.yml -vvv 
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                --all*)
                        ansible-playbook playbooks/onboarding.yml --ask-vault-pass -e @password.yml -vvv 
                        ansible-playbook playbooks/operations.yml --ask-vault-pass -e @password.yml -e state="present" -vvv 
                        shift
                        ;;
                *)
                        break
                        ;;
        esac
done
