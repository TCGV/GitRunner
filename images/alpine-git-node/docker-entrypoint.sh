#!/bin/bash
set -e

git clone $GIT_REPO_URL repo
cd repo

screen -dmS daemon sh -c "$COMMAND" >> logfile.log

sleep infinity