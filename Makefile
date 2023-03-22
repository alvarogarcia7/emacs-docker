
CONTAINER_TAG=emacs-container
HOME=${PWD}

all: build run

build:
	docker build -t ${CONTAINER_TAG} .
run: up
	docker-compose exec doom /home/.config/emacs/bin/doom run
	$(MAKE) save
	$(MAKE) show-diff-save

up:
	docker-compose up -d

bash:
	docker-compose exec doom bash

save:
	cd org && git add . && git commit --all -m "save"

show-diff-save:
	cd org && git log -n1 -p

