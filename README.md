# Server_Test
EC2 Server deployment test

## Nginx Container

to run container
```
sudo docker run -d -it --name [CONTAINER_NAME] -p 8080:8080 nginx:latest /bin/bash
```

to enter container with bash
```
sudo docker exec -it [CONTARINER_NAME] /bin/bash
```
