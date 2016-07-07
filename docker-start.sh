#!/bin/sh
mkdir templates && cd templates
if [ -d ".git" ]; then
   git pull
else
   git clone $github_repo .
fi 
ln -sf templates/config /code/config
chmod 777 /code/config
chmod -R 775 /code/config/*
