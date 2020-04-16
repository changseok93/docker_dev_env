FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04

ENV CONTAINER_IMAGE_VER=v1.0.0
RUN echo $CONTAINER_IMAGE_VER

# install the tooks i wish to use
RUN apt-get update && \
  apt-get install -y \
  net-tools \
  curl \
  zsh \
  wget \
  git-core \
  git \
  build-essential \
  gcc \
  locales \
  ssh \
  vim \
  htop \
  tmux \
  cmake \
  python3-pip \
  fonts-powerline \
  && sh -c "$(wget -O- https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)" -- \
    -t agnoster \
    -p git \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -p https://github.com/zsh-users/zsh-history-substring-search \
  && locale-gen ko_KR.UTF-8 en_US.UTF-8

RUN pip3 install jupyterlab
RUN jupyter lab --generate-config
RUN echo "c.NotebookApp.port = 8888 \nc.NotebookApp.ip = '172.17.0.2' \nc.NotebookApp.password_required = False \nc.NotebookApp.token = ''" >> /root/.jupyter/jupyter_notebook_config.py


# start zsh
CMD [ "zsh" ]
