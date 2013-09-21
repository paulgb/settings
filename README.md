Settings
========

Set up user settings across multiple machines. Settings are stored in a git repo
stored at `~/.settings` and sourced or symlinked from `~/`, allowing for easy
versioning of settings files.

Installation:

    curl https://raw.github.com/paulgb/settings/master/remote_install.sh | bash

The script will not mess with existing settings. It will check out this repo to ~/.settings.
If there are .*rc files in configfiles that are not already in ~/, it will symlink them to
the repo. If they do exist, it will try to add a `source` command to include the file from
the repo. Look at the output of `remote_install.sh` to see what it did for each file.

Requirements
------------

- curl
- git

Cloning
-------

Feel free to fork this for your own settings, just make sure to change the git repo URL in `remote_install.sh`.
