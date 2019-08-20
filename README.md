### Prerequisites:
These instructions and the corresponding scripts assume that you'll interact with your remote repositories through the SSH protocal.
Read through [GitHub's official doc](https://help.github.com/en/articles/about-ssh) if you need to create an SSH key and/or add one to your GitHub account.
If you prefer to use the HTTPS protocal, simply change all URLs accordingly.
For a helpful comparison between SSH and HTTPS, see [this gist](https://gist.github.com/grawity/4392747).

### Install:
```bash
cd ~
git clone "git@github.com:levicrews/template-project.git"
git clone "git@github.com:levicrews/template-notebook.git"
git clone "git@github.com:levicrews/auto-init.git"
pip3 install -U -r auto-init/requirements.txt
cp auto-init/.auto_init_commands.sh .auto_init_commands.sh
cp auto-init/create_project.py create_project.py
cp auto-init/create_notebook.py create notebook.py
source .auto_init_commands.sh
```
In `create_project.py` and `create_notebook.py`, set the username and password to match yours.
Everything will be installed into your home directory by default.
Change filepaths as needed.

### Usage:
To initialize a research project, enter
```bash
project <name of your folder>
```
in the terminal.
To initialize a notebook or non-research project, enter
```bash
notebook <name of your folder>
```
in the terminal.
