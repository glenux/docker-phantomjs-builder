all: build

configure:
	docker build -t netcat-phantomjs-builder .

build/phantomjs: 
	test ! -e build || mkdir -p build
	docker run -it -v $(shell pwd)/build:/target netcat-phantomjs-builder 

build: build/phantomjs

install: build
	install --owner root --group root build/phantomjs /usr/local/bin/phantomjs

