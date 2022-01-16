app-build:
	docker-compose build

app-init:
	docker-compose run --rm web bash -c 'make init-db && rails db:seed'

app:
	docker-compose up

init-db:
	bundle exec rails db:create db:migrate
