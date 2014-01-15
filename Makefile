all: build

build:
	docker build -t fixate/ruby-mri .

push:
	docker push fixate/ruby-mri
