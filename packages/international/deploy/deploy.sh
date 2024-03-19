#!/bin/bash
export LC_ALL="en_US.UTF-8"

set -x
set -e

ENV=$1
BOX=$2
CURR_TS=$(date +"%s")
ENV_FILE=.env


#prepare environment variables
echo "RELEASE_TS=$CURR_TS" >>$ENV_FILE


source ./$ENV_FILE


cd $WORKSPACE
python3 deploy/deploy.py
