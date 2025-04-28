container:
	echo "Building container..."
	docker build -t aks-gpu-daemonset:0.0.1 --file ./docker/Dockerfile .
.PHONY: container

all: container
