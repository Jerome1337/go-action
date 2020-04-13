#!/bin/sh -l

cd $GITHUB_WORKSPACE

GOIMPORTS_OUTPUT="$(goimports -l "$1" 2>&1)"

if [ -n "$GOIMPORTS_OUTPUT" ]; then
  echo "All following has imports not properly ordered"
  echo "${GOIMPORTS_OUTPUT}"

  exit 1
fi

echo "::set-output name=goimports-output::Goimports step succeed"
