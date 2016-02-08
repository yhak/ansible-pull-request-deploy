#!/bin/sh

ANSIBLE_ROOT=$(dirname $0)
ANSIBLE_INVENTORY=$ANSIBLE_ROOT/vars/test-hosts
ANSIBLE_PLAYBOOK=$ANSIBLE_ROOT/playbook.yml
COMMIT_HASH=$(git fetch upstream && git rev-parse --verify upstream/master)

ansible-playbook -i localhost, playbook.yml $COMMIT_HASH -vvvv
## ansible-playbook -vv -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOK --extra-vars="commit_hash=$COMMIT_HASH"
