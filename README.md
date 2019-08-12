### Install: 
```bash
cd /home/levicrews
git clone "https://github.com/levicrews/template-project.git"
git clone "https://github.com/levicrews/template-notebook.git"
git clone "https://github.com/levicrews/auto-init.git"
cd auto-init
pip3 install -U -r requirements.txt
source ~/.auto_init_commands.sh
```
In `create_project.py` and `create_notebook.py`, set the username and password to match yours.
Change all directories to `~/path/to/your/project`.


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
