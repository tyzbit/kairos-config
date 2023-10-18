#!/usr/bin/env bash
version=v2.3.1

set -e

nerdctl run --rm -v $PWD:/configs ghcr.io/tyzbit/kairosctl:$version sh -c \
"""
for config in /configs/*/cloud-config.yaml; do 
  echo -n \"\$config: \"; 
  kairosctl validate \$config;
  if [[ \$? -eq 0 ]]; then 
    echo \"valid\";
  else
    exit 1
  fi
done
"""