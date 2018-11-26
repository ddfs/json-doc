help:
	@echo
	@echo "  json-doc"
	@echo
	@echo "  Makefile targets"
	@echo "  - dev: install dev dependencies"
	@echo "  - dist: build distribution package"
	@echo "  - test: run test coverage"
	@echo
	@echo "  - lint: run pylint"
	@echo
	@echo "  - twine-test: upload to pypi test"
	@echo "  - twine-dist: upload to pypi dist"
	@echo
	@echo "  For installation"
	@echo "    python setup.py install"
	@echo

dev:
	@echo "Installing requirements for dev"
	pip install -U -r requirements-dev.txt

dist:
	@echo "Building package"
	python setup.py sdist bdist_wheel

clean:
	@echo "Cleaning up"
	rm -rf .eggs build/ dist/ json_doc.egg-info

test:
	@echo "Running tests"
	python setup.py test

lint:
	@echo "Running checks"
	pylint json_doc tests

twine-test:
	twine upload --repository testpypi dist/*

twine-dist:
	twine upload dist/*

