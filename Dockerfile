FROM base/archlinux

MAINTAINER kfei <kfei@kfei.net>

ENV HOME /root

RUN pacman -Syy \
    && pacman -S --noconfirm \
        curl \
        git \
        make \
        nodejs \
        ruby \
        tmux \
        vim \
    && npm install --global bower gulp \
    && gem install sass

RUN echo "alias bower='bower --allow-root'" >> ~/.bashrc \
    && echo "export PATH=$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH" >> ~/.bashrc

COPY bootstrap.sh /usr/local/bin/bootstrap

COPY template /usr/share/angular-material-seed

ENTRYPOINT ["/bin/bash"]

VOLUME ["/code"]

WORKDIR /code
