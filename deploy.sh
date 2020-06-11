#!/bin/bash

kapp deploy -a consul --diff-changes \
  -f <(ytt --ignore-unknown-comments \
    -f config | kbld -f -) \
  $@