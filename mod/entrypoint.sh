#!/bin/sh -l

cd $GITHUB_WORKSPACE

exec 2>&1
GO_MOD_OUPUT="$(go mod tidy -v 2>&1)"

if echo "${GO_MOD_OUPUT}" | grep 'unused'; then
  echo "${GO_MOD_OUPUT}"

  exit 1
fi

echo "::set-output name=gomod-output::Go mod step succeed"
