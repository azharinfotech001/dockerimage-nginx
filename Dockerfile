FROM ubuntu:20.04
MAINTAINER "Azhar<azharinfotechoo01@gmail.com>"
ARG DEBAIN_FRONTEND=noninteractive
RUN apt update && apt install -y nginx iproute2
COPY index.html /var/www/html
COPY index.html /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["nginx","-g"]
CMD ["daemon off;"]