FROM nginx:1.7

MAINTAINER leoh0 <liquidnuker@gmail.com>

COPY default.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /entrypoint.sh

ENV PROXY_TIMEOUT 300s

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
