.DEFAULT_GOAL := help
define HELP_TEXT
Usage: make [TARGET]

Targets:
  help      Show this help message
  build     docker image build
  run      Run scripts
  clean     Clean the build artifacts
endef

export HELP_TEXT

.PHONY: help
help:
	@echo "$$HELP_TEXT"

.PHONY: build
build:
	@echo "Building the docker image..."
	@docker build --no-cache -t ubuntu-with-awscli .

.PHONY: run
run:
	@echo "Running docker..."
	@docker-compose up && docker-compose down

.PHONY: clean
clean:
	@echo "Cleaning the build artifacts..."
