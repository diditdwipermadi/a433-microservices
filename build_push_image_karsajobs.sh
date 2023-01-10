#!/bin/bash
 
# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs, dan memiliki tag latest
docker build -t karsajobs:latest .
 
# Melihat daftar image di lokal
docker image ls
 
# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag karsajobs:latest diditdwipermadi/karsajobs:latest
 
# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u diditdwipermadi --password-stdin
 
# Mengunggah image ke Docker Hub
docker push diditdwipermadi/karsajobs:latest