# 0109 개인 스터디
Dockerfile을 통해 Jenkins, Vue application을 컨테이너화 시켜 배포하였다.

## Nginx Container
to run container
```
sudo docker run -d -it --name [CONTAINER_NAME] -p 8080:8080 nginx:latest /bin/bash
```
to enter container with bash
```
sudo docker exec -it [CONTARINER_NAME] /bin/bash
```
## Jenkins Container

to build and run container
```
bash jenkins/sbin/run.sh
```
port forwarded: 9090:8080, 50000:50000 \
volume binded: jenkins_home, docker.sock
## Vue Application Container

to build and run container
```
bash app/sbin/run.sh
```
port forwarded: 8080:8080 \
files copied: vue-app/*
---