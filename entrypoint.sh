#!/bin/bash
set -e

EVENT_PATH=$GITHUB_EVENT_PATH

env
jq . < $EVENT_PATH

VERSION=$(date +%F.%s)

DATA="$(printf '{"tag_name":"v%s",' $VERSION)"
DATA="${DATA} $(printf '"target_commitish":"master",')"
DATA="${DATA} $(printf '"name":"v%s",' $VERSION)"
DATA="${DATA} $(printf '"body":"Automated release based on keyword: %s",' "$*")"
DATA="${DATA} $(printf '"draft":false, "prerelease":false}')"

URL="https://api.github.com/repos/saurabhkdm/Create_release/releases?access_token=$1"
echo $DATA | http POST $URL | jq .
