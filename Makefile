CONTAINER = tvaughan/lein
VERSION = 2.6.1

.PHONY = all build run clean

all: build

.built: Dockerfile
	@docker build -t $(CONTAINER):$(VERSION) .
	@touch $@

build: .built

run: build lein.yml
	@docker-compose -f lein.yml run lein

clean:
	@rm -f .built
