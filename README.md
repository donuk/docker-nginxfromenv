Also on dockerhub:

https://hub.docker.com/r/donuk/nginxfromenv

Serve a webpage which returns only the text "Hello World":

```
CONFIG="
        events {}
        http {
            server {
                listen 80;
                location / { return 200 'Hello, World'; }
            }
        }
"

docker run -p 80:80 -e CONFIG="$CONFIG" --rm donuk/nginxfromenv
```
