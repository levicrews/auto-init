#!/bin/bash

function project() {
    cd ~
    source .env
    cp -a ~/template-project $FILEPATH$1
    rm -rf $FILEPATH$1/.git
    python ~/auto-init/create.py $1
    cd $FILEPATH$1
    sed -i '1,$d' README.md
    echo "Repository for $1" >> README.md
    git init
    git remote add origin git@github.com:levicrews/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}

function notebook() {
    cd ~
    source .env
    cp -a ~/template-notebook $FILEPATH$1
    rm -rf $FILEPATH$1/.git
    python ~/auto-init/create.py $1
    cd $FILEPATH$1
    sed -i '1,$d' README.md
    echo "This repository contains my notes on $1." >> README.md
    git init
    git remote add origin git@github.com:levicrews/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}
