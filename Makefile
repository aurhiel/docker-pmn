build:
	docker-compose stop;
	docker-compose build;
	docker-compose up -d;

boot:
	docker-compose up -d;
	docker-compose exec --user docker php-fpm bash;

reboot:
	docker-compose stop;
	docker-compose up -d;
	docker-compose exec --user docker php-fpm bash;

shell:
	docker-compose exec --user docker php-fpm bash;

shell-root:
	docker-compose exec php-fpm bash;

shutdown:
	docker-compose stop;
