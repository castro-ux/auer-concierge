FROM nginx:alpine3.22

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html

RUN find /usr/share/nginx/html/assets -type d -exec chmod 755 {} \; \
 && find /usr/share/nginx/html/assets -type f -exec chmod 644 {} \;
