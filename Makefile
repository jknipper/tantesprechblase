VERSION?=v0.0.1

build:
	docker build -t ghcr.io/polykit/tantesprechblase:${VERSION} .
	
push:
	docker push ghcr.io/polykit/tantesprechblase:${VERSION}

server:
	hugo server -D

submodule:
	git submodule init
