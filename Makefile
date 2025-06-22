.PHONY: lint 

lint:
	poetry run black --check .



check: lint 
	@echo "✅ Проверки пройдены"