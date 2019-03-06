.PHONY: clean clean-mypycache clean-all lint typecheck build test zipapp docker-build docker-run

init:
	python3 -m venv venv
	pip install -r requirements-dev.txt
	mkdir -p dist

build: clean lint typecheck zipapp

clean: # remove all build, test, coverage and Python artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
	rm -rf .pytest_cache +
	rm -rf build +
	rm -rf dist/*

clean-mypycache:
	rm -rf .mypy_cache

clean-all: clean clean-mypycache

lint: ## check style with flake8
	flake8 soppi/ tests/

typecheck: # type check with mypy
	mypy --strict soppi

test: # run tests
	py.test

zipapp:
	python -m zipapp soppi -m "soppii:main" -p "/usr/bin/env python3" -o dist/soppii

docker-build:
	make clean-all build
	docker build -t "soppi-i" .

docker-run:
	docker run --rm -it -v "$(PWD)"/examples:/soppi/examples soppi-i sh
