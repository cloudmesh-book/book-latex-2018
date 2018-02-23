FROM ubuntu:16.04
MAINTAINER Gregor von Laszewski <laszewski@gmail.com>


RUN apt-get update -q && apt-get install -qy \
    build-essential \
    wget \
    curl \
    emacs \
    git-core \
    software-properties-common

RUN add-apt-repository universe

RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

RUN pyenv install 3.6.4
RUN pyenv global 3.6.4
RUN python -m ensurepip

RUN echo 'export PATH="/root/.pyenv/bin:$PATH"' > .profile
RUN echo 'eval "$(pyenv init -)"' >> .profile
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> .profile

RUN pwd

#RUN export PATH="/root/.pyenv/bin:$PATH"
#RUN eval "$(pyenv init -)"
#RUN eval "$(pyenv virtualenv-init -)"

# RUN source .profile



WORKDIR /book
VOLUME ["/book"]