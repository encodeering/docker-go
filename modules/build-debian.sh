#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/buildpack-$ARCH:buster-scm" "buildpack-deps:buster-scm"

docker-build "$PROJECT/$VERSION/buster"
