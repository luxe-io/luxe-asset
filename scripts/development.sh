#!/usr/bin/env bash
#Using -sTCP:LISTEN so it does not kill anything wing that PORT
if lsof -i :8080 -sTCP:LISTEN -t >/dev/null ; then
    kill -9 $(lsof -i :8080 -sTCP:LISTEN -t) 2> /dev/null
else
    echo Application not running
fi
#Boot Application
echo Rebuilding application
ORE_PEER_ADDRESS=peer:7052 CORE_CHAINCODE_ID_NAME=mycc:0 CORE_PEER_TLS_ENABLED=false ./cmd/src -peer.address peer:7052
