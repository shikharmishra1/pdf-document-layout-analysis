#!/bin/bash
set -e
exec gunicorn \
    -k uvicorn.workers.UvicornWorker \
    --chdir ./src \
    drivers.rest.app:app \
    --bind 0.0.0.0:5060 \
    --timeout 10000
