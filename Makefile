default:
    $(eval env ?= dev)

env ?= dev stage prod
ifeq (,$(filter $(env),dev stage prod))
	$(error Error: env variable must be dev, stage or prod)
endif

$(info [$(env) environment])

install-serverless:
	npm install

install-deps:
	uv venv --python 3.11
	uv sync

init-up: install-serverless install-deps
	uv run pre-commit install

serve-fastapi:  # run project in localhost fastapi server
	uv run fastapi dev

serve-offline:  # run serverless offline for local testing
	uv run npx serverless offline --stage $(env) --noPrependStageInUrl

lint-format:
	uv run ruff check --fix app
	uv run ruff format app
