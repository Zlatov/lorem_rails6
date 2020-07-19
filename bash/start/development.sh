#!/usr/bin/env bash
set -eu

cd "$(dirname "${0}")"

bundle exec rails s
