app-build:
	docker-compose build

app-init:
	docker-compose run --rm web bash -c 'rails db:create db:migrate && rails db:seed'

app:
	docker-compose up
