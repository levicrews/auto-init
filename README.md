### Prerequisites:
These instructions and the corresponding scripts assume that you'll interact with your remote repositories through the SSH protocal.
Read through [GitHub's official doc](https://help.github.com/en/articles/about-ssh) if you need to create an SSH key and/or add one to your GitHub account.
If you prefer to use the HTTPS protocal, simply change all URLs accordingly.
For a helpful comparison between SSH and HTTPS, see [this gist](https://gist.github.com/grawity/4392747).

### Install:
```bash
cd ~
git clone "git@github.com:levicrews/template-project.git" template-project
git clone "git@github.com:levicrews/template-notebook.git" template-notebook
git clone "git@github.com:levicrews/auto-init.git" auto-init
pip install -U -r auto-init/requirements.txt
touch .env
```

Add the following to your `.bashrc` file:
``` bash
source ~/auto-init/.auto_init_commands.sh
```
Add the following to your `.env` file:

``` bash
USERNAME="<your username>"
PASSWORD="<your password>"
FILEPATH="</your/file/path>"
```

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
I recommend that you start by running

``` bash
testauto <name of test folder>
```
to ensure that your `FILEPATH` is set correctly.

