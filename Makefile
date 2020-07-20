PROG=license

build:
	sudo docker build . -t isuhpc/$(PROG)


run:
	sudo docker run --rm -d --name $(PROG)  isuhpc/$(PROG):latest

exec:
	sudo docker exec -it $(PROG) bash

stop:
	sudo docker stop $(PROG)

clean:
	sudo docker stop $(PROG)
	sudo docker image rm isuhpc/$(PROG):latest

realclean:
	sudo docker image purge
