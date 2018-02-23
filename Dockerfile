FROM ubuntu:16.04
MAINTAINER Gregor von Laszewski <laszewski@gmail.com>

RUN apt-get update -q && apt-get install -qy \
    build-essential \
    wget \
    curl \
    emacs \
    git-core \
    pandoc \
    libssl-dev \
    zlib1g-dev 
RUN add-apt-repository universe

RUN apt-get install -qy \
    texlive-full \
    biber

RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

RUN echo 'export PATH="/root/.pyenv/bin:$PATH"' > .profile
RUN echo 'eval "$(pyenv init -)"' >> .profile
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> .profile
RUN source .profile
RUN pyenv install 3.6.4
RUN pyenv global 3.6.4
RUN python -m ensurepip

RUN git clone https://github.com/cloudmesh/book.git

WORKDIR /book
VOLUME ["/book"]