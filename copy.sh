#!/usr/bin/env bash
scp -r .ssh $1:~/
scp -r cfgs $1:~/
ssh $1 'cd && ln -sf cfgs/.vim .'
ssh $1 'cd && ln -sf cfgs/.vimrc .'
ssh $1 'cd && ln -sf cfgs/.gitconfig .'
ssh $1 'cd && ln -sf cfgs/.profile .'
