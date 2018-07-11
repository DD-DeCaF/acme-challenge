FROM nginx:1.15-alpine

RUN mkdir /usr/share/nginx/challenges

COPY nginx.conf /etc/nginx/nginx.conf
