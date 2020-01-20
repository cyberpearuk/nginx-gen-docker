# Nginx-gen

Extends jwilder/docker-gen with nginx.tmpl, to simplify the separate container setup
use with jwilder/nginx-proxy.

## Extra

Along with the features described in jwilder/nginx-proxy (for example default vhost config)
the following has been add.

### Shared location config

Similar to how `/etc/nginx/vhost.d/default_location` works, a file can be defined at
`/etc/nginx/common.d/location.conf` which is included into the virtual host location config. This 
differs from default_location in that the configuration is retained even if an 
explicit `/etc/nginx/vhost.d/{VIRTUAL_HOST}_location` file is defined.

### Virtual Host Server level config

Similar to how `/etc/nginx/vhost.d/default` works, a file can be defined at 
`/etc/nginx/common.d/server.conf` which is included into the virtual host server config. 
This differs from default_location in that the configuration is retained even if an 
explicit `/etc/nginx/vhost.d/{VIRTUAL_HOST}` file is defined.

### HTTP level config

A file can be defined at `/etc/nginx/common.d/http.conf` which is included into http config. 