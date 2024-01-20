up:
	docker compose up -d 

up-build:
	docker compose up -d --build

down:
	docker compose down

exec:
	docker exec -it gcc bash

login:
	acc login
	oj login https://atcoder.jp/


PROBLEMS = a b c d e f g
DIR =
setup:
ifndef DIR
	$(error DIR is not set)
endif
	acc new $(DIR) --template algo --choice all
	for problem in $(PROBLEMS); do \
		cp template.cc $(DIR)/$$problem.cc; \
	done
	echo 'PROBLEMS = $(PROBLEMS)' > $(DIR)/Makefile
	cat Makefile.template >> $(DIR)/Makefile

apply-template:
	cp template.cc "`acc config-dir`"/algo/template.cc
	cp template.json "`acc config-dir`"/algo/template.json

