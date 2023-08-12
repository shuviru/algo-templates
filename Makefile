up:
	docker compose up -d --build

down:
	docker compose down

exec:
	docker exec -it gcc bash

PROBLEMS = A B C D E F G Ex
DIR = 

setup:
ifndef DIR
	$(error DIR is not set)
endif
	mkdir -p $(DIR)
	for problem in $(PROBLEMS); do \
		cp template.cc $(DIR)/$$problem.cc; \
	done
	echo 'PROBLEMS = $(PROBLEMS)' > $(DIR)/Makefile
	cat Makefile.template >> $(DIR)/Makefile
