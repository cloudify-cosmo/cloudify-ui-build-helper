#!/usr/bin/env bash

set -e

export CLOUDIFY_UI_TAR_GZ="cloudify-ui-${CFY_VERSION}-${CFY_PRERELEASE}-b${CFY_BUILD_NUMBER}.tgz"
export CLOUDIFY_COMPOSER_TAR_GZ="blueprintcomposer-${CFY_VERSION}.tgz"


export CLOUDIFY_COMPOSER_UNSTABLE_URL="https://s3.amazonaws.com/cloudify-ui/`PROJECT_NAME=cloudify-blueprint-composer get-unstable-s3-folder`/${CLOUDIFY_COMPOSER_TAR_GZ}"