FROM nginx:1.27.2

ADD ./setup-config.sh /docker-entrypoint.d/99-setup-config.sh

ENV CONFIG="\
server {\
    listen       80;\
\
    location / {\
      proxy_set_header Host             \$host;\
      proxy_set_header X-Real-IP        \$remote_addr;\
\
      root   /usr/share/nginx/html;\
      index  index.html index.htm;\
    }\
}\
"
