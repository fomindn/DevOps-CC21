# README

# DevOps-CC21
DevOps-CC21
Fomin Dmytro Homeworks

## Run project

- Add to /etc/hosts docker.localhost address
```
sudo bash -c 'echo "127.0.0.1  docker.localhost" >> /etc/hosts'
```

- Run local docker registry
```
docker-compose -f ./registry/docker-compose.yml up -d
```

- Run local jenkins
```
docker-compose -f ./jenkins/docker-compose.yml up -d
```

## Create docker image

Run in current folder, command

```
docker build -f ./Dockerfile/Dockerfile -t landing-page:$(date +%Y%m%d%H%M%S) . && \
    docker rmi $(docker images -f "dangling=true" -q)
```

 
