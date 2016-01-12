#!/usr/bin/env bash


if [ "${VERSION}" == "" ];then
    echoerr "get_unstable_s3_dist :: VERSION expected but missing"
    exit 1
fi

if [ "${PRERELEASE}" == "" ];then
    echoerr "get_unstable_s3_dist :: PRERELEASE expected but missing"
    exit 1
fi

if [ "${BUILD_NUMBER}" == "" ];then
    echoerr "get_unstable_s3_dist :: BUILD_NUMBER expected but missing"
    exit 1
fi

if [ "${BUILD_ID}" == "" ];then
    echoerr "get_unstable_s3_dist :: BUILD_ID expected but missing"
    exit 1
fi

if [ "${PROJECT_NAME}" == "" ];then
    echoerr "get_unstable_s3_dist :: PROJECT_NAME expected but missing"
    exit 1
fi

echo "continuous-build/nightly/${PROJECT_NAME}/${VERSION}-${PRERELEASE}-${BUILD_ID}"