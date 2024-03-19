#!/bin/bash
export LC_ALL="en_US.UTF-8"

set -x
set -e

ENV=$1
BOX=$2
INFRA_STACKS=$3
CURR_TS=$(date +"%s")
ENV_FILE=.env

aws s3 sync s3://porter-backend-platforms/packages/deployer/v1/ packages/international/deploy/deployer/

#prepare environment variables
echo "RELEASE_TS=$CURR_TS" >>$ENV_FILE

if [ ! -z "$INFRA_STACKS" ]; then
  echo "INFRA_STACKS=$INFRA_STACKS" >>$ENV_FILE
fi

source ./$ENV_FILE


cd $WORKSPACE
python3 packages/international/deploy/deploy.py "${ENV}" "${BOX}" "${INFRA_STACKS}"
