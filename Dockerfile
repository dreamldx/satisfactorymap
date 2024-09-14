FROM nginx:alpine

WORKDIR /usr/share/nginx/

RUN rm -rf html
RUN mkdir html

WORKDIR /

COPY ./conf/nginx.conf /etc/nginx
COPY ./dist /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]