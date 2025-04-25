#! /bin/bash
export MLOPS_SPOOLER_TYPE="FILESYSTEM"
export MLOPS_FILESYSTEM_DIRECTORY="/tmp/ta"
export MLOPS_DEPLOYMENT_ID="dummy_id_1234"
export MLOPS_MODEL_ID="dummy_id_4321"
export DEPLOYMENT_ID="dummy_id_1234"
export MODEL_ID="dummy_id_4321"

mkdir -p /tmp/ta

drum server --code-dir ./custom-model --target-type unstructured --monitor-embedded --webserver https://app.datarobot.com/api/v2 --api-token $DATAROBOT_API_TOKEN --address 0.0.0.0:12345 --logging-level info --verbose --runtime-params-file runtime_params.yaml