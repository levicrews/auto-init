#!/bin/bash

function project() {
    cd
    python3 create_project.py $1
    cd /home/levicrews/$1
    git init --template=</home/levicrews/template-project>
    git remote add origin git@github.com:levicrews/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}

function notebook() {
    cd
    python3 create_notebook.py $1
    cd /mnt/c/Users/levic/Documents/$1
    git init --template=</home/levicrews/template-notebook>
    git remote add origin git@github.com:levicrews/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}
