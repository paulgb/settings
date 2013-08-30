Settings
========

Set up user settings across multiple machines. Settings are stored in a git repo
stored at `~/.settings` and sourced or symlinked from `~/`, allowing for easy
versioning of settings files.

Installation:

    curl https://raw.github.com/paulgb/settings/master/remote_install.sh | bash

Requirements
------------

- curl
- git

Cloning
-------

Feel free to fork this for your own settings, just make sure to change the git repo URL in `install.sh`.
