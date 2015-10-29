all: build

configure:
	docker build -t netcat-phantomjs-builder .

build: configure
	test ! -e build || mkdir -p build
	docker run -it -v $(shell pwd)/build:/target netcat-phantomjs-builder 

