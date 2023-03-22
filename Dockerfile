FROM alpine:3.16
RUN apk add --no-cache emacs bash git make ripgrep
ENV HOME /home
COPY .gitconfig /etc/gitconfig
RUN git clone https://github.com/doomemacs/doomemacs ~/.config/emacs && cd ~/.config/emacs && git checkout d9f18e6040d5aa96245f93ccd864163c2eab82c0
RUN yes | ~/.config/emacs/bin/doom install --config --install --fonts --env
ENV PATH="$PATH:~/.config/emacs/bin"
WORKDIR ${HOME}/workspace
ENTRYPOINT ["bash"]
