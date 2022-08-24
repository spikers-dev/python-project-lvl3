install:
	@poetry install
 
lint:
	@poetry run flake8 loader
 
# selfcheck:
# 	poetry check
 
# check: selfcheck lint
 
build: check
	@poetry build
 
# run_test:
# 	poetry run pytest --cov=loader --cov-report xml tests/
 
 
# .PHONY: install test lint selfcheck check build

package-install:
	pip install --user dist/*.whl