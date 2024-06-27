FROM alpine:3.16
RUN apk add --no-cache emacs bash git make ripgrep
ENV HOME /home
COPY .gitconfig /etc/gitconfig
RUN git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
RUN yes "y" | ~/.config/emacs/bin/doom install --config --install --fonts --env
ENV PATH="$PATH:~/.config/emacs/bin"
WORKDIR ${HOME}/workspace
ENTRYPOINT ["bash"]
