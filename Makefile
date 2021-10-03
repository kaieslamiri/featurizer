# TODO : add default configuration for the exported variables. 

.PHONY: install
install:
	poetry install --no-dev

.PHONY: install-dev
install-dev:
	poetry install

.PHONY: install-with-doc
install-with-doc:
	poetry install --with docs

.PHONY: update-packages
update-packages:
	poetry update

.PHONY: test
test:
	poetry run pytest src/tests

.PHONY: format
format:
	@poetry run black .