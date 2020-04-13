#!/bin/sh -l

cd $GITHUB_WORKSPACE

PACKAGES=$(go list)
GOVET_OUTPUT=""

for dir in */; do
  dir=${dir%*/}

  GOVET_OUTPUT="${GOVET_OUTPUT} $(go vet $PACKAGES/$dir)"
done

if [ -n $GOVET_OUTPUT ]; then
  echo "${GOVET_OUTPUT}"

  exit 1
fi

echo "::set-output name=govet-output::Govet step succeed"
