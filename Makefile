# Configuration
docker.up:
	docker-compose up --detach

docker.stop:
	docker-compose stop

db.setup:
	# TEST
	docker-compose exec -e MIX_ENV=test application mix ecto.drop
	docker-compose exec -e MIX_ENV=test application mix ecto.create
	docker-compose exec -e MIX_ENV=test application mix ecto.migrate
	# DEV
	docker-compose exec -e MIX_ENV=test application mix ecto.drop
	docker-compose exec -e MIX_ENV=test application mix ecto.create
	docker-compose exec -e MIX_ENV=test application mix ecto.migrate