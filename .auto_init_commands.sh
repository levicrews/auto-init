#!/bin/bash

function project() {
    cd /home/levicrews
    cp -a /home/levicrews/template-project $1
    rm -rf $1/.git
    python3 create_project.py $1
    cd /home/levicrews/$1
    sed '1,$d' README.md
    echo "Repository for $1" >> README.md
    git init
    git remote add origin git@github.com:levicrews/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}

function notebook() {
    cd /home/levicrews
    cp -a /home/levicrews/template-notebook $1
    rm -rf $1/.git
    python3 create_notebook.py $1
    cd /home/levicrews/$1
    sed '1,$d' README.md
    echo "This repository contains my notes on $1" >> README.md
    git init
    git remote add origin git@github.com:levicrews/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}
