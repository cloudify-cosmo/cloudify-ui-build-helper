#!/usr/bin/env bash

set -e
## this script expects to be in the repository's clone
## and have all the required git configuration inplace


echoerr() { echo "$@" 1>&2; }

if [ "${VERSION}" == "" ];then
    echoerr "create_and_push_build_tag :: VERSION expected but missing"
    exit 1
fi

if [ "${PRERELEASE}" == "" ];then
    echoerr "create_and_push_build_tag :: PRERELEASE expected but missing"
    exit 1
fi

if [ "${BUILD_NUMBER}" == "" ];then
    echoerr "create_and_push_build_tag :: BUILD_NUMBER expected but missing"
    exit 1
fi

if [ "${BUILD_ID}" == "" ];then
    echoerr "create_and_push_build_tag :: BUILD_ID expected but missing"
    exit 1
fi

export GIT_TAG="v${VERSION}-${PRERELEASE}-${BUILD_NUMBER}-${BUILD_ID}"

git tag ${GIT_TAG} -m "automated build [ci skip]"
git push origin --tags