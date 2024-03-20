#! /bin/bash

DD_AGENT_HOST=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
export DD_AGENT_HOST

echo "Starting Intl-Website server.."
yarn start:server >${LOG_FILE} &
SPOTF_PID=$!

echo "writing PID to PID_FILE"
echo ${SPOTF_PID} >${PID_FILE}
