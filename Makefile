KEYWORD=FIXED


run: build
	docker run --rm release-maker $(KEYWORD)

build:
	docker build --tag release-maker .
test:
	./entrypoint.sh $(KEYWORD)