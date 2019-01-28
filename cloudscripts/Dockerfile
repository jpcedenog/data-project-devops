FROM continuumio/miniconda3

RUN pip install --upgrade pip
RUN conda update conda
RUN apt-get update && apt-get install -y build-essential
RUN echo "channels:\n  - defaults\n\n  - conda-forge" > ~/.condarc
RUN mkdir -p ~/.aws/
RUN echo "[default]\naws_access_key_id =  FakeKey\naws_secret_access_key = FakeKey\naws_session_token = FakeKey" > ~/.aws/credentials
