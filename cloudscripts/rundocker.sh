#!/usr/bin/bash

#docker build --squash --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)" --build-arg SSH_PUBLIC_KEY="$(cat ~/.ssh/id_rsa.pub)" --tag=mlenvtest .

# Host directory must be a location in the HDD
docker run --rm -it -v  ~/Dev/projects/data-project-devops:/var/data-project-devops mlenvtest /bin/bash
