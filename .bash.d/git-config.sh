#!/bin/bash

git config --global user.name "Michael Stahnke"
git config --global user.email "stahnma@puppetlabs.com"
git config --global color.diff "auto"
git config --global color.status "auto"
git config --global color.branch "auto"
git config --global color.ui "auto"
git config --global github.user "stahnma"
git config --global github.token "$GITHUB_TOKEN"

git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.tagg  'tag -s -u 4BD6EC30'
