#!/bin/bash

if [[ ! $1 ]];then
  echo "dir prefix! was reqires."
  exit  1
fi

ansible-playbook -i hosts.ansible ansible-best-practices.yml --extra-vars "path_prefix=$1"

