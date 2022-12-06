all: build

build:
	docker run --rm -u `id -u`:`id -g` -v `pwd`:/pandoc dalibo/pandocker:stable --template=eisvogel document.md -o document.pdf --listings
