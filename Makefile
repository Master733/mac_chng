.PHONY: lint init-dev init lint check

init:
	python -m pip install --upgrade pip
	python -m pip install poetry
	poetry install --without dev

init-dev:
	python -m pip install --upgrade pip
	python -m pip install poetry
	poetry install --with dev

lint:
	poetry run black --check .

check: lint 
	@echo "✅ Проверки пройдены"