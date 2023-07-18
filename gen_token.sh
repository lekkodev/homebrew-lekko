#!/bin/bash

# This script allows external users to generate a temporary Github access token
# that allows them to download Lekko's developer tools.
# This script should be executed in the following context:
#
#   export LEKKO_API_KEY=lekko_************
#   export HOMEBREW_GITHUB_API_TOKEN=$(./gen_token.sh)
#   brew tap lekkodev/lekko
#   brew install lekko
# 
# The script depends on the LEKKO_API_KEY environment variable. This apikey should be
# generated within the Lekko app for a specific team. The script also depends on the 
# following tools:   brew, curl, jq
# For upgrades, the following sequence of commands should be run:
#
#   export LEKKO_API_KEY=lekko_************
#   export HOMEBREW_GITHUB_API_TOKEN=$(./gen_token.sh)
#   brew upgrade lekko
#

abort() {
  printf "%s\n" "$@" >&2
  exit 1
}

check_tool_exists() {
  if ! command -v "$@" &> /dev/null
  then
    abort "tool $@ could not be found" 
  fi
}

if [ -z $LEKKO_API_KEY ]
then
  abort "env LEKKO_API_KEY could not be found" 
fi

# Fail fast with a concise message when not using bash
if [ -z "${BASH_VERSION:-}" ]
then
  abort "Bash is required to interpret this script."
fi

check_tool_exists brew  # brew is needed to install lekko in later steps
check_tool_exists curl
check_tool_exists jq

token=$(curl -s \
  -H "apikey: $LEKKO_API_KEY" \
  -H "Content-Type: application/json" \
  -X POST -d '{}' \
  https://web.api.lekko.dev/lekko.backend.v1beta1.DistributionService/GetDeveloperAccessToken | jq -r .token)

echo $token
