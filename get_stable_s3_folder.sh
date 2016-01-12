#!/usr/bin/env bash

 echoerr() { echo "$@" 1>&2; }

if [ "${CFY_VERSION}" == "" ];then
    echoerr "get_unstable_s3_dist :: CFY_VERSION expected but missing"
    exit 1
fi

if [ "${CFY_PRERELEASE}" == "" ];then
    echoerr "get_unstable_s3_dist :: CFY_PRERELEASE expected but missing"
    exit 1
fi

if [ "${CFY_BUILD_NUMBER}" == "" ];then
    echoerr "get_unstable_s3_dist :: CFY_BUILD_NUMBER expected but missing"
    exit 1
fi

if [ "${BUILD_UID}" == "" ];then
    echoerr "get_unstable_s3_dist :: BUILD_ID expected but missing"
    exit 1
fi

if [ "${PROJECT_NAME}" == "" ];then
    echoerr "get_unstable_s3_dist :: PROJECT_NAME expected but missing"
    exit 1
fi

echo "continuous-build/stable/${PROJECT_NAME}/${CFY_VERSION}-${CFY_PRERELEASE}-${CFY_BUILD_UID}"