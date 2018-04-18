#!/usr/bin/env bash
proj="postgres"
ver=$(cat Dockerfile | head -n 1 | awk -F: '{print $2}')
ver=${ver:-latest}
echo "Building $proj:$ver container"
docker build . -t jesiio/$proj:$ver --no-cache --squash && docker push jesiio/$proj:$ver
