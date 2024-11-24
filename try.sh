#!/bin/bash

#
cd $1 || exit

PRE_PULL_HASH=$(git rev-parse HEAD)
git pull -q
POST_PULL_HASH=$(git rev-parse HEAD)

if [ "$PRE_PULL_HASH" != "$POST_PULL_HASH" ]; then
	echo "got update from github"
fi


