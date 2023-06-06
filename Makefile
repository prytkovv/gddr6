all:
	gcc -std=c11 -O3 -Wall -Werror -Wextra -Wshadow -Wpointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wold-style-definition -Wvla -o gddr6 gddr6.c -lpci 
clean:
	rm -f gddr6
install:
	bash checkrequirements
	cp gddr6 /usr/local/bin/
	cp gddr6a /usr/local/bin/
	cp gddr6a.sudoers /etc/sudoers.d/gddr6a
	chown root:root /etc/sudoers.d/gddr6a
update:
	git pull
