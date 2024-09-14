FROM node as builder

WORKDIR /
COPY . .

RUN ["npm", "i"]
RUN ["npm", "run", "build"]

FROM nginx:alpine

WORKDIR /usr/share/nginx/

RUN rm -rf html
RUN mkdir html

WORKDIR /

COPY ./conf/nginx.conf /etc/nginx
COPY --from=builder ./dist /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]