docker-start:
	docker-compose up

test-docker:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
	docker compose run --rm app npm test

lint:
	npx eslint .

lint-fix:
	npx eslint --fix .