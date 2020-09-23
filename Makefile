IMAGE = ondrejsika/go-server-with-metrics
CONTAINER = go-server-with-metrics

all: build push

build:
	docker build -t $(IMAGE) .

push:
	docker push $(IMAGE)

run:
	docker run --name $(CONTAINER) -d -p 80:80 $(IMAGE)

stop:
	docker rm -f $(CONTAINER)
