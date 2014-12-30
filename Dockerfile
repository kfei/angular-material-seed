FROM base/archlinux

MAINTAINER kfei <kfei@kfei.net>

ENV HOME /root

RUN pacman -Syy \
    && pacman -S --noconfirm \
        git \
        nodejs \
        ruby \
    && npm install --global bower gulp \
    && gem install sass

RUN echo "alias bower='bower --allow-root'" >> ~/.bashrc \
    && echo "export PATH=$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH" >> ~/.bashrc

COPY bootstrap.sh /usr/local/bin/bootstrap

ENTRYPOINT ["/bin/bash"]

VOLUME ["/code"]

WORKDIR /code
