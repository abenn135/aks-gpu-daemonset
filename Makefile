CONTAINER_ENGINE ?= docker

container:
	echo "Building container..."
	$(CONTAINER_ENGINE) build -t aks-gpu-daemonset:0.0.1 --file ./docker/Dockerfile .
.PHONY: container

all: container
