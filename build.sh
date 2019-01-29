cd "`dirname "$0"`"
pushd ubuntu >/dev/null
bash build.sh
popd >/dev/null
git pull --rebase upstream master || exit
git push
docker build --no-cache -t sameersbn/apt-cacher-ng .
