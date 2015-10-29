all: build

configure:
	docker build -t netcat-phantomjs-builder .

build: configure
	mkdir build
	docker run -it netcat-phantomjs-builder -v build:/tmp/build

