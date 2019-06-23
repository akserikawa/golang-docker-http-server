default:
	@echo "=== Building Local API ==="
	docker build -t golang-http-api-image:latest .

up: default
	@echo "=== Starting API Locally ==="
	docker-compose up -d 

logs:
	docker-compose logs -f

down:
	docker-compose down

test:
	go test -v

clean: down
	@echo "=== Cleaning Up ==="
	docker system prune -f
	docker volume prune -f