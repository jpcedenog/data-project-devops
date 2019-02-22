FROM continuumio/miniconda3

RUN apt-get update
RUN apt-get install -y build-essential wget git-core

#Upgrade pip and install miniconda
RUN pip install --upgrade pip
RUN conda update conda
RUN echo "channels:\n  - defaults\n\n  - conda-forge" > ~/.condarc

# add credentials on build
#ARG SSH_PRIVATE_KEY
#ARG SSH_PUBLIC_KEY
#RUN mkdir /root/.ssh/
#RUN echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa
#RUN echo "${SSH_PUBLIC_KEY}" > /root/.ssh/id_rsa.pub

#Create a fake AWS credentials file
RUN mkdir -p ~/.aws/
RUN echo "[default]\naws_access_key_id =  FakeKey\naws_secret_access_key = FakeKey\naws_session_token = FakeKey" > ~/.aws/credentials

#Clone project repository
#RUN git clone git@github.com:jpcedenog/data-project-devops.git /var/data-project-devops
RUN git clone https://github.com/jpcedenog/data-project-devops.git /var/data-project-devops
RUN cd /var/data/data-project-devops
RUN make setup
RUN make install
RUN source activate data-driven-project
RUN pip install -r requirements_pip.txt
