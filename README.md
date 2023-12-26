# Docker

## Comandos úteis

### Containers
- `docker ps`: Lista os conteiners ativos
- `docker ps -a`: Lista todos os conteiners
- `docker run -it ubuntu bash`: Roda um conteiner do Ubuntu e se conecta via bash
- `docker run -d -p 8080:80 nginx`: Roda um conteiner do nginx em background conectando as portas 8080 (host) com 80 (docker)
- `docker stop CONTEINER_ID`: Para a execução do conteiner
- `docker start CONTEINER_ID`: Inicia a execução do conteiner
- `docker rm CONTEINER_ID`: Deleta o conteiner
- `docker run -d --name nginx nginx`: Dar um nome ao container
- `docker exec -it nginx bash`: Entrar num container rodando via bash
- `docker run -it --name php php:7.4-cli bash`
- `docker run -d --name nginx -p 8080:80 -v ~/html/:/usr/share/nginx/html nginx`: Usando volume 
- `docker run -d --name nginx -p 8080:80 --mount type=bind,source=/home/jordy/html,target=/usr/share/nginx/html nginx`: Volume com link explicito
- `docker logs CONTEINER_NAME`: Mostra os logs do conteiner 

### Volumes
- `docker volume create meuVolume`: Criando volume
- `docker volume ls`: Listando os volumes
- `docker volume inspect meuVolume`: Inspecionando os volumes
- `docker run --name nginx -d --mount type=volume,source=meuVolume,target=/app nginx`: Rodando um docker usando um volume
- `docker run --name nginx -d -v meuVolume:/app nginx`: Usando -v para usar um volume
- `docker volume prune`: Limpar todos os volumes da máquina

### Images
- `docker images`: Lista as imagens baixadas
- `docker pull IMAGE_NAME`: Faz o download de uma imagem
- `docker rmi IMAGE_NAME`: Remover imagem local
- `docker build -t ajjordy/nginx-com-vim:latest .`: Criando uma imagem a partir do Dockerfile
- `docker run -it ajjordy/nginx-com-vim bash`: Rodando minha imagem
- `docker ps -a -q`: Listar IDs de todos os conteiners 
- `docker rm $(docker ps -a -q) -f`: Remover todos os conteiners 
- `docker login`: Se conectar ao Docker Hub
- `docker push ajjordy/nginx-fullcycle`: Subir uma imagem para o Docker Hub

### Network
- `docker network ls`: Listar as redes 
- `docker attach nginx-fullcycle`: Conectar no bash do conteiner
- `docker network create --driver bridge minharede`: Criar rede
- `docker network connect minharede ubuntu3`: Conectar um container na rede

- **bridge:** Um conteiner se comunicando com outro *(default)*
- **host:** Um conteiner se comunicando com a maquina host
- **overlay:** Um conteiner se comunicando com outro em máquinas separadas
- **maclan:** ??? 
- **none:** Conteiner isolado

- Acessando o host: `host.docker.internal`


### Docker Compose

- `docker-compose up -d`: Roda arquivo docker-compose.yml
- `docker-compose up --build`: Força o build dos conteiners 
- `docker-compose ps`: Lista os conteiners
- `docker-compose down`: Para os conteiners 


https://github.com/jwilder/dockerize


### Exemplos

- Environments variables: 
```Dockerfile
ENV MY_VAR_ENV 1234
```

- Execute command (with replace)
```Dockerfile
# $ docker run --rm ajjordy/nginx echo "oi"
CMD ["echo", "Hello World"]
# > oi
```

- Execute command (stable)
```Dockerfile
# $ docker run --rm ajjordy/nginx jordy
ENTRYPOINT [ "echo", "Hello" ]
CMD ["world"] # default
# > Hello jordy
```
