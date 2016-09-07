up:
	docker run --name nginx -p 80:80 -v `pwd`/nginx.conf:/etc/nginx/conf.d/default.conf:ro --link front:front -d nginx:latest

docker-run:
	docker run -ti --name nginx --rm -p 80:80 -v `pwd`/nginx.conf:/etc/nginx/conf.d/default.conf:ro --link front:front nginx:latest bash
