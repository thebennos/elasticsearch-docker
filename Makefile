DOCKER_IMAGE_NAME=tenstartups/elasticsearch

build: Dockerfile
	docker build -t ${DOCKER_IMAGE_NAME} .

run: build
	docker run -it --rm ${DOCKER_IMAGE_NAME} ${ARGS}
