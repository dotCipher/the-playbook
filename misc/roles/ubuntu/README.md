Ubuntu Automation
=============

A role containing linux automation tasks for management of ubuntu distributions.

**NOTE:** The commands below assume that the default user is `unbuntu`, but feel free to change the argument `--user=ubuntu` to whatever the default user is.

### Tasks

#### Step by Step

Install Ansible deps on the remote system in order to run most of the playbooks *(enter the user password at prompt)*:

`ansible-playbook -i hosts/somehost roles/ubuntu/tasks/ansible.yml --user=ubuntu --ask-pass`

Enable passwordless SSH in order to remove all future password prompts for running playbooks *(enter the sudo password at prompt)*:

`ansible-playbook -i hosts/somehost roles/ubuntu/tasks/passwordless_ssh.yml --user=ubuntu --ask-become-pass`

Finally generate a new admin user for you to use for all future playbooks *(enter the sudo password at prompt)*:

`ansible-playbook -i hosts/somehost roles/ubuntu/tasks/add_admin_user.yml --user=ubuntu --ask-become-pass`

Or if you want to create a user named something different than the default (`dotcipher`) then use this command:

`ansible-playbook -i hosts/somehost roles/ubuntu/tasks/add_admin_user.yml --user=ubuntu --ask-become-pass -e "admin_username=jsmith"`

#### One Liner

Run all setup tasks on system *(enter the sudo password at prompt)*:

`ansible-playbook -i hosts/somehost roles/ubuntu/tasks/main.yml --user=ubuntu --ask-become-pass`


<!-- On your host system make sure a few things are in order before running the tasks:

When SSH-ed in as the user you plan to run the commands under, make sure that your public SSH key is trusted:

On your local machine, run:

`cat ~/.ssh/id_rsa.pub`

Copy the output and then run this on your Ubuntu machine:

**(Replace `$EDITOR` with your preferred editor like `nano`, `vi`, `vim`, `emacs`, etc)**

`mkdir -p ~/.ssh && $EDITOR ~/.ssh/authorized_keys`

Then we need to setup the user as a sudoer by adding the following line to `/etc/sudoers`:

**(Replace `$USERNAME` with the user you plan to run commands under)**

`$USERNAME            ALL = (ALL) NOPASSWD: ALL`



 -->
