#!/bin/bash
# shellcheck disable=SC2164

APP_NAME=${APP_NAME:-"NO Name"}
APP_URL=${APP_URLS:-"http://404"}
APP_ICON=${APP_ICON:-"https://404/imgs"}
# ======================
cd "$(dirname "$0")"
config=$(
  cat <<-PROS
APP_NAME=$APP_NAME
APP_URLS=$APP_URL

PROS
)

echo "$config"
echo "$config" >config.properties
