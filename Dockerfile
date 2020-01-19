FROM jwilder/docker-gen

ADD nginx.tmpl /etc/docker-gen/templates/nginx.tmpl

# Creates /etc/nginx/conf.d/default.conf
CMD ["-notify-sighup", "nginx", "-watch", "/etc/docker-gen/templates/nginx.tmpl", "/etc/nginx/conf.d/default.conf"]



