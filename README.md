## 2024-06-27 11:24:22 AGB

# This repo is deprecated

I am using doom in local (installed on the host) instead of docker

## Previous contents

This repo is a fork of https://github.com/nithishdivakar/emacs-docker

# emacs-docker
Emacs with org mode and evil mode inside a docker 
container

To use,  ensure docker  is installed correctly and 
then simply run `make` 

Keep your local files in `org` directory.  This 
directory is mapped as persistence
storage inside the container

Code of evil mode is from https://github.com/emacs-evil/evil

2024-06-14 13:59:27 AGB

I couldn't build the docker image from the dockerfile, because the cloning of `emacs-undo-fu` fails. Inside docker, it works:

1. Comment the installation
2. docker run #(base)
3. install manually
4. commit the running container to an image: https://www.dataset.com/blog/create-docker-image/
