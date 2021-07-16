#!/bin/bash

#docker-compose -f docker-compose.override.webapp-builder.yml run webapp-builder bash

docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.override.webapp-builder.yml run webapp-builder bash