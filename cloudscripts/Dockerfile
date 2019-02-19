FROM continuumio/miniconda3

RUN apt-get update
RUN apt-get install -y build-essential wget git-core

#Upgrade pip and install miniconda
RUN pip install --upgrade pip
RUN conda update conda
RUN echo "channels:\n  - defaults\n\n  - conda-forge" > ~/.condarc

#Create a fake AWS credentials file
RUN mkdir -p ~/.aws/
RUN echo "[default]\naws_access_key_id =  FakeKey\naws_secret_access_key = FakeKey\naws_session_token = FakeKey" > ~/.aws/credentials

#Clone project repository
RUN git clone git@github.com:jpcedenog/data-project-devops.git /var/data-project-devops
