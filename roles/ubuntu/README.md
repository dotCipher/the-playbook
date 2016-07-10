Ubuntu Automation
=============

Linux automation scripts for management Ubuntu

### Setup

On your host system make sure a few things are in order before running the tasks:

When SSH-ed in as the user you plan to run the commands under, make sure that your public SSH key is trusted:

On your local machine, run:

`cat ~/.ssh/id_rsa.pub`

Copy the output and then run this on your Ubuntu machine:

**(Replace `$EDITOR` with your preferred editor like `nano`, `vi`, `vim`, `emacs`, etc)**

`mkdir -p ~/.ssh && $EDITOR ~/.ssh/authorized_keys`

Then we need to setup the user as a sudoer by adding the following line to `/etc/sudoers`:

**(Replace `$USERNAME` with the user you plan to run commands under)**

`$USERNAME            ALL = (ALL) NOPASSWD: ALL`



