#!/bin/bash
cd "`dirname "$0"`"
git pull --rebase upstream master || exit
git push
docker build --no-cache -t sameersbn/apt-cacher-ng .
