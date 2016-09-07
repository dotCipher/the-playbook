#!/usr/bin/env bash
# Ansible wrapper to provision oh-my-zsh on any given set of hosts

ansible-playbook -i $@, ansible/roles/oh-my-zsh/tasks/main.yml
