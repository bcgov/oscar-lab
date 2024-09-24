#!/usr/bin/env bash

echo "===> Create Intention"
# Create intention
cat ./.github/workflows/sample-intention.json | jq "\
    .event.url=\"$GITHUB_SERVER_URL$GITHUB_EVENT_PATH\" \
    " > intention.json