#!/usr/bin/env bash

echo
echo "Starting the environment shutdown"
echo "================================="
docker-compose down -v

echo
echo "Removing containers"
echo "-------------------"
docker rmi mysql:9 quay.io/keycloak/keycloak:25.0.2

echo
echo "Environment shutdown successfully"
echo "================================="
echo
