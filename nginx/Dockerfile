FROM nginx:latest

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]

WORKDIR /app 

RUN apt-get update && \
	apt-get install vim -y

COPY html /usr/share/nginx/html