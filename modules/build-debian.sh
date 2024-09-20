#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/buildpack-$ARCH:bookworm-scm" "buildpack-deps:bookworm-scm"

docker-build "$PROJECT/$VERSION/bookworm"
