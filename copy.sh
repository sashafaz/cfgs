#!/usr/bin/env bash
scp -r .ssh $1:~/
scp -r cfgs $1:~/
ssh $1 'cd && ln -s cfgs/.vim .'
ssh $1 'cd && ln -s cfgs/.vimrc .'
ssh $1 'cd && ln -s cfgs/.gitconfig .'
ssh $1 'cd && ln -s cfgs/.profile .'
