FROM nginx:alpine

ARG env_string

COPY . /usr/share/nginx/html
RUN echo $env_string >> /usr/share/nginx/html/index.html
