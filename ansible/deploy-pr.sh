#!/bin/sh

ANSIBLE_ROOT=$(dirname $0)
ANSIBLE_INVENTORY=$ANSIBLE_ROOT/inventories/test-hosts
ANSIBLE_PLAYBOOK=$ANSIBLE_ROOT/playbook.yml
COMMIT_HASH=$(git rev-parse --verify HEAD)

ansible-playbook -i localhost, $ANSIBLE_PLAYBOOK --extra-vars="commit_hash=$COMMIT_HASH" -vvvv
