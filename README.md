### Prerequisites:
These instructions and the corresponding scripts assume that you'll interact with your remote repositories through the SSH protocal.
Read through [GitHub's official doc](https://help.github.com/en/articles/about-ssh) if you need to create an SSH key and/or add one to your GitHub account.
If you prefer to use the HTTPS protocal, simply change all URLs accordingly.
For a helpful comparison between SSH and HTTPS, see [this gist](https://gist.github.com/grawity/4392747).

### Install: 
```bash
cd /home/levicrews
git clone "git@github.com:levicrews/template-project.git"
git clone "git@github.com:levicrews/template-notebook.git"
git clone "git@github.com:levicrews/auto-init.git"
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
