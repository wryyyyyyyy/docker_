#!/bin/sh
echo STAGE SETUP
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
cd image-0001 && pwd
mkdir bin && cd bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
ls -alh && pwd
sudo chmod u+x ./busybox && sudo ./busybox id
=======
uname -a && uptime
>>>>>>> changed setup
=======
id && uname -a && uptime
>>>>>>> changed build
bash build.sh
=======
mkdir image-0001/bin && cd image-0001/bin
wget -c https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
cd .. && sudo chmod u+x bin/busybox && sudo bin/busybox id
pwd && docker build . -t ${GITHUB_REPOSITORY_OWNER}/bussy:v1
docker login ghcr.io --username `echo ${GITHUB_REPOSITORY_OWNER}` --password `echo ${CONTAINER_TOKEN}`
docker run --rm -t ${GITHUB_REPOSITORY_OWNER}/bussy:v1 /bin/busybox
docker tag ${GITHUB_REPOSITORY_OWNER}/bussy:v1 ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
docker image ls ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
docker push ghcr.io/${GITHUB_REPOSITORY_OWNER}/bussy:v1.0
cd .. && ./post.sh
>>>>>>> changed build
