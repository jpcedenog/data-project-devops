#!/usr/bin/bash
#docker build --tag=mlenvtest .
# /projects is the same as ~/Dev/projects (host directory must be a location in the HDD)
docker run --rm -it -v /projects:/var/dataprojectdevops mlenvtest /bin/bash
