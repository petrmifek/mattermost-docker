#!/bin/bash

docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.override.webapp-builder.yml build webapp-builder