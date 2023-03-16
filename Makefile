
CONTAINER_TAG=emacs-container
HOME=${PWD}

all: build run

build:
	docker build -t ${CONTAINER_TAG} .
run: up
	docker-compose exec doom /home/.config/emacs/bin/doom run
	$(MAKE) save

up:
	docker-compose up -d

bash: run

save:
	cd scheme && git add . && git commit --all -m "save"

