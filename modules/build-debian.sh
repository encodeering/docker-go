#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/buildpack-$ARCH:stretch-scm" "buildpack-deps:stretch-scm"

docker-build "$PROJECT/$VERSION/stretch"
