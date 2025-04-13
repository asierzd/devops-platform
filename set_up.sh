#!/bin/bash
set -a
. ./.env
set +a

./github_runner/runner_scale_set/deploy.sh

