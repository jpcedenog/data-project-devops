build:
	docker build --tag=mlenvtest .
	#docker build --squash --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)" --build-arg SSH_PUBLIC_KEY="$(cat ~/.ssh/id_rsa.pub)" --tag=mlenvtest .

run:
	# Host directory must be a location in the HD
	# docker run --rm -it -v ~/Dev/projects/data-project-devops:/var/data-project-devops mlenvtest /bin/bash
	docker run --rm -it mlenvtest /bin/bash