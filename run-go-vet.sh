#!/usr/bin/env bash
set -e

pkg=$(go list)
for dir in $(echo $@|xargs -n1 dirname|sort -u); do
  go vet -tags integration $pkg/$dir
done