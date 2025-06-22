.PHONY: lint init-dev init lint check

init:
	python -m pip install --upgrade pip
	python -m pip install poetry
	poetry install --without dev

init-dev:
	python -m pip install --upgrade pip
	python -m pip install poetry
	poetry install --with dev

build: init
	poetry build

lint:
	poetry run black --check .

check: lint 
	@powershell -Command "Write-Output '✅ Проверки пройдены'"
