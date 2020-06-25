KEYWORD=FIXED


run: build
	docker run --rm release-maker-new $(KEYWORD)

build:
	docker build --tag release-maker-new .
test:
	./entrypoint.sh $(KEYWORD)
