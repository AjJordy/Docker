# Docker

### Comandos úteis
- `docker ps`: Lista os conteiners ativos
- `docker ps -a`: Lista todos os conteiners
- `docker run -it ubuntu bash`: Roda um conteiner do Ubuntu e se conecta via bash
- `docker run -d -p 8080:80 nginx`: Roda um conteiner do nginx em background conectando as portas 8080 (host) com 80 (docker)
- `docker stop CONTEINER_ID`: Para a execução do conteiner
- `docker start CONTEINER_ID`: Inicia a execução do conteiner
- `docker rm CONTEINER_ID`: Deleta o conteiner
- `docker run -d --name nginx nginx`: Dar um nome ao container
- `docker exec -it nginx bash`: Entrar num container rodando via bash
- `docker run -d --name nginx -p 8080:80 -v ~/html/:/usr/share/nginx/html nginx`: Usando volume 
- `docker run -d --name nginx -p 8080:80 --mount type=bind,source=/home/jordy/html,target=/usr/share/nginx/html nginx`: Volume com link explicito
- `docker volume create meuVolume`: Criando volume
- `docker volume ls`: Listando os volumes
- `docker volume inspect meuVolume`: Inspecionando os volumes
- `docker run --name nginx -d --mount type=volume,source=meuVolume,target=/app nginx`: Rodando um docker usando um volume
- `docker run --name nginx -d -v meuVolume:/app nginx`: Usando -v para usar um volume
- `docker volume prune`: Limpar todos os volumes da máquina
- `docker images`: Lista as imagens baixadas
- `docker pull IMAGE_NAME`: Faz o download de uma imagem
- `docker rmi IMAGE_NAME`: Remover imagem local
- `docker build -t ajjordy/nginx-com-vim:latest .`: Criando uma imagem a partir do Dockerfile
- `docker run -it ajjordy/nginx-com-vim bash`: Rodando minha imagem
- `docker ps -a -q`: Listar IDs de todos os conteiners 
- `docker rm $(docker ps -a -q) -f`: Remover todos os conteiners 