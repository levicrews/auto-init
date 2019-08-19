#!/bin/bash

function project() {
    cd /home/levicrews
    python3 create_project.py $1
    cd /home/levicrews/$1
    git init --template=</home/levicrews/template-project>
    git remote add origin git@github.com:levicrews/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}

function notebook() {
    cd /home/levicrews
    python3 create_notebook.py $1
    cd /home/levicrews/$1
    git init --template=</home/levicrews/template-notebook>
    git remote add origin git@github.com:levicrews/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}
