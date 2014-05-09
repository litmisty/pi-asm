# Makefile
all: bin/first bin/02_sum bin/03_load01 bin/03_store01 bin/04_compare

# ----- 01 
bin/first: obj/first.o
	gcc -o $@ $+
 
obj/first.o : 01_first.s
	as -o $@ $<

# ----- 02

bin/02_sum: obj/02_sum.o
	gcc -o $@ $+

obj/02_sum.o : 02_sum.s
	as -o $@ $<

# ----- 03

bin/03_load01: obj/03_load01.o
	gcc -o $@ $+
bin/03_store01: obj/03_store01.o
	gcc -o $@ $+

obj/03_load01.o : 03_load01.s
	as -o $@ $<
obj/03_store01.o : 03_store01.s
	as -o $@ $<

# ----- 04

bin/04_compare: obj/04_compare.o
	gcc -o $@ $+

obj/04_compare.o : 04_compare.s
	as -o $@ $<

# ----- clean
clean:
	rm -f obj/*.obj bin/*
