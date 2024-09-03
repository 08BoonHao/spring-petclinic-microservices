@echo off
REM Step 1: Build the Docker images
docker-compose build

REM Step 2: Deploy the application
docker-compose up -d

REM Step 3: Verify the deployment
docker-compose ps
