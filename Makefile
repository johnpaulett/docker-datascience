IMAGE=johnpaulett/datascience

build: Dockerfile
	docker build -t $(IMAGE) .

run: build
	docker run -p 8888:8888 -v $(shell pwd):/home/jovyan/work $(IMAGE):latest
