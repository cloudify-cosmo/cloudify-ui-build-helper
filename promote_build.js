#!/usr/bin/env node


'use strict';
var AWS = require('aws-sdk');
var _ = require('lodash');


var logger = require('log4js').getLogger('copy_s3_artifacts');
var s3 = new AWS.S3({accessKeyId: process.env.S3_ACCESS_KEY, secretAccessKey: process.env.S3_SECRET_KEY});

var files = process.env.S3_FILES.split(';');


_.each(files, function (f) {
    s3.copyObject({
        Bucket: process.env.S3_BUCKET,
        CopySource: process.env.SOURCE_FOLDER + '/' + f,
        Key: process.env.DEST_FOLDER + '/' + f,
        ACL: 'public-read'

    }, function (err, data) {
        if (err) {
            logger.error(err);
        }
        if (data) {
            logger.info(data);
        }

    });

});
