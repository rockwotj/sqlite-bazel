#!/bin/bash

set -euo pipefail
set -x

# Update the sqlite submodule to its remote HEAD
git submodule update --remote --merge sqlite || true

pushd sqlite
git pull --ff-only || true
popd

./sqlite/configure
make sqlite3.c

git add sqlite3.c sqlite3.h sqlite || true
if git diff --cached --quiet; then
	echo "No changes to commit"
	exit 0
fi

git commit -m "Monthly update of sqlite3"
