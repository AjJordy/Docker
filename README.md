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
