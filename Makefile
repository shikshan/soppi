.PHONY: clean clean-mypycache clean-all lint typecheck run

init:
	conda env create

update:
	conda env update

run: clean lint typecheck

clean: # remove all build, test, coverage and Python artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
	rm -rf .pytest_cache

clean-mypycache:
	rm -rf .mypy_cache

clean-all: clean clean-mypycache

lint: ## check style with flake8
	flake8 src/

typecheck: # type check with mypy
	mypy --strict src
