#!/bin/sh

RUN_SCRIPT=$1
PID_FILE=$2
LOG_FILE=$3
DEATH_FILE=$4

shift 4 # TODO: This must match EXACTLY with the number of parameters required above

# This redirects output to both the STDOUT and log file.
# We want to have it on STDOUT so that it can be checked directly from docker logs even for stopped containers.
exec > >(tee -i ${LOG_FILE})
exec 2>&1

SELF_NAME=$(basename $0)
function _log {
  echo "$(date +"%F %T") ${SELF_NAME} $1"
}

function _shutdown {
  _log "creating death file"
  touch ${DEATH_FILE}

  _log "shutting down"
  exit
}

function _term {
  _log "received SIGTERM"

  _log "killing run script with INT"
  kill -INT "${RUN_PID}"

  _log "waiting for run script to die"
  wait "${RUN_PID}"

  _log "run script has died"
  _shutdown
}

trap _term SIGTERM

_log "starting run script, $RUN_SCRIPT" 
# This has to source the run script, instead of starting it via bash ${RUN_SCRIPT}
# because in that case it will not be able to wait on the process as it won't be a child process
source ${RUN_SCRIPT}

_log "waiting for run script to complete"
RUN_PID=$(cat ${PID_FILE})
wait ${RUN_PID}

_log "run script died voluntarily"
_shutdown
