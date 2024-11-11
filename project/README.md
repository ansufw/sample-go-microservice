# Go Microservices 2024

Learn Go Microservices in 2024

## Stacks
1. Golang
2. Database: MongoDB, Postgresql
3. Messging: RabbitMQ
4. MailUI: Mailhog


## Command

1. init docker swarm
```
docker swarm init
```
2. build image
```
docker build -f log-service.dockerfile -t ansuf/log-service:1.0.0 .
```]
3. deploy swarm
```
docker stack deploy -c swarmfile.yml microservice-app
```
4. stop/remove swarm
```
docker stack rm microservice-app
```
5. scale up/down
```
docker service scale microservice-app_listener-service=3
```
6. leave the swarm
```
docker swarm leave --force
```



