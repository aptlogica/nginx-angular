#Mainteners Aptlogica Technologies
FROM nginx:alpine

#Adding custom config file can be updated in nginx-conf foler
ADD --chown=nginx:nginx nginx-conf/default.conf /etc/nginx/conf.d/default.conf

#Copied a Sample index.html file to validate image exec

COPY nginx-conf/index.html /usr/share/nginx/html

#Exposing Ports 80 and 443 for SSL

EXPOSE 80 443
