#!/bin/sh -l

cd $GITHUB_WORKSPACE

exec 5>&1
GOFMT_OUTPUT="$(gofmt -l -w "$1" | tee /dev/fd/5)"

if [ -n $GOFMT_OUTPUT ]; then
  echo "${GOFMT_OUTPUT}"

  exit 1
fi

echo "::set-output name=gofmt-output::Gofmt step succeed"
