CONTAINER_NAME=cubrid
IMAGE_NAME=bigpel66/cubrid
VERSION=0.0.0

.PHONY 	:	build
build		:
					docker build --platform=linux/x86_64 --rm -t $(IMAGE_NAME):$(VERSION) .

.PHONY	:	create
create	:
					docker container run -i -t --name $(CONTAINER_NAME) --platform=linux/x86_64 -p 1523:1523 $(IMAGE_NAME):$(VERSION)

.PHONY	:	run
run			: build create

.PHONY	:	rmf
rmf			:
					docker container rm -f $(CONTAINER_NAME)

.PHONY	:	clean
clean		:
					docker image rm -f $(IMAGE_NAME):$(VERSION)

.PHONY	:	fclean
fclean	:	rmf clean

.PHONY	:	prune
prune		:
					docker image prune
