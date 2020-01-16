#!/usr/bin/env bash

if [ -z "$1" ]
then
  echo "Please set MapProxy seed!"
  echo "Seed can be one of the following (see mapproxy/seed.yml):"
  python -c 'import sys, yaml, json; print(list(yaml.load(sys.stdin)["seeds"].keys()))' < /app/seed.yaml
  echo "For example:"
  echo "  docker-compose run mapproxy seed.sh publieke_werken_2500_1943"
else
  mapproxy-seed -c 6 -s /app/seed.yaml -f /app/mapproxy.yaml --seed=$1
fi

