FROM nginx:latest

# Execute command (with replace)
# $ docker run --rm ajjordy/nginx echo "oi"
# CMD ["echo", "Hello World"]
# > oi

# Execute command (stable)
# $ docker run --rm ajjordy/nginx jordy
# ENTRYPOINT [ "echo", "Hello" ]
# CMD ["world"] # default
# > Hello jordy

# Environments variables
# ENV MY_VAR_ENV 1234

WORKDIR /app 

RUN apt-get update && \
	apt-get install vim -y

COPY html /usr/share/nginx/html