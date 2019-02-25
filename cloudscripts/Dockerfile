FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y build-essential wget git-core && pip install --upgrade pip && conda update conda && echo "channels:\n  - defaults\n\n  - conda-forge" > ~/.condarc

RUN mkdir -p ~/.aws/ && echo "[default]\naws_access_key_id =  FakeKey\naws_secret_access_key = FakeKey\naws_session_token = FakeKey" > ~/.aws/credentials

RUN git clone https://github.com/jpcedenog/data-project-devops.git /var/data-project-devops
WORKDIR /var/data-project-devops
RUN make setup && make install
RUN conda activate data-driven-project
RUN pip install -r requirements_pip.txt
