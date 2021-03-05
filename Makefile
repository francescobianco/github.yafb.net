build:
	docker build -t francescobianco.github.io .
	docker run --rm -ti -v $${PWD}/docs:/docs francescobianco.github.io
