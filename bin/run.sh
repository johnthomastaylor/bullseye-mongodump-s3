#!/bin/sh

docker run \
  --name mongodump-s3 \
  --rm \
  --env-file config.env \
  --mount type=bind,source=/Users/john.taylor/.aws,target=/root/.aws \
  recipedude/bullseye-mongodb-s3:latest sleep 999999
