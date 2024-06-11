include .env
export $(shell sed 's/=.*//' .env)


up:
	docker compose up -d --build

down:
	docker compose down --rmi all

logs:
	docker compose logs -f

clean:
	docker compose down -v