#!/usr/bin/bash

#docker build --tag=mlenvtest .

# Host directory must be a location in the HDD
docker run --rm -it -v  ~/Dev/projects/data-project-devops:/var/data-project-devops mlenvtest /bin/bash
