#!/bin/sh -l

ISABELLE_VERSION=$1
shift

cd /container
echo "creating docker image with isabelle version: $ISABELLE_VERSION"

# here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build -t container --build-arg isabelle_version="$ISABELLE_VERSION" . && docker run -e HEAP_CACHE_DIR=${HEAP_CACHE_DIR} container ${@}
