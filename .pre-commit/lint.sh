#!/usr/bin/env bash
version=v2.3.1

set -e

command=docker

if command nerdctl &>/dev/null; then
  command=nerdctl
fi

$command run --rm -v $PWD:/configs ghcr.io/tyzbit/kairosctl:$version sh -c \
"""
find . -name cloud-config.yaml | while read config; do 
  echo -n \"\$config: \"; 
  kairosctl validate \$config;
  if [[ \$? -eq 0 ]]; then 
    echo \"valid\";
  else
    exit 1
  fi
done
"""