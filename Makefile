setup:
    @make build
    @make up
    @make migrate
    @make seed

build:
    docker-compose build --no-cache --force-rm

up:
    docker-compose up -d

down:
    docker-compose stop

migrate:
    docker exec -it Propel php artisan migrate

seed:
    docker exec -it Propel php artisan db:seed
