
CONTAINER_TAG=emacs-container
HOME=${PWD}

all: build run

build:
	docker build -t ${CONTAINER_TAG} .
run:
	docker run -v "${PWD}/scheme:${HOME}/workspace" -it ${CONTAINER_TAG} 

bash: run

save:
	cd scheme && git add . && git commit --all -m "save"

# With the command, it no longer works: error cannot execute a binary file
#emacs ${HOME}/workspace/2.org
