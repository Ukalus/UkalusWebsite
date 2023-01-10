#!/bin/bash
docker build t- ukalus-postgres-db ./Dockerfile
docker run -d --name ukalus-db-container -p 5432:5432 ukalus-postgres-db
sleep 10
docker exec -ti ukalus-db-container psql -U postgres ukalus-db