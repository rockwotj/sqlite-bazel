#!/bin/bash

set -ex

git submodule update --remote sqlite
pushd sqlite
git pull origin master
popd
./sqlite/configure
make sqlite3.c
git add sqlite3.c sqlite3.h
