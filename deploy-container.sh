#!/bin/bash
docker login -u=gavinmroy -p=${DOCKER_PASSWORD}
docker build -t aweber/rabbitmq-autocluster:${TRAVIS_TAG} .
docker tag aweber/rabbitmq-autocluster:${TRAVIS_TAG} aweber/rabbitmq-autocluster:latest
docker push aweber/rabbitmq-autocluster:${TRAVIS_TAG}
docker push aweber/rabbitmq-autocluster:latest
