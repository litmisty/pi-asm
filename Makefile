all: bin/04_compare bin/03_store01 bin/02_sum bin/01_first bin/03_load01 bin/06_collatz bin/08_array01 bin/06_loop01

bin/04_compare : obj/04_compare.o
	gcc -o $@ $+
obj/04_compare.o : 04_compare.s
	as -o $@ $<

bin/03_store01 : obj/03_store01.o
	gcc -o $@ $+
obj/03_store01.o : 03_store01.s
	as -o $@ $<

bin/02_sum : obj/02_sum.o
	gcc -o $@ $+
obj/02_sum.o : 02_sum.s
	as -o $@ $<

bin/01_first : obj/01_first.o
	gcc -o $@ $+
obj/01_first.o : 01_first.s
	as -o $@ $<

bin/03_load01 : obj/03_load01.o
	gcc -o $@ $+
obj/03_load01.o : 03_load01.s
	as -o $@ $<

bin/06_collatz : obj/06_collatz.o
	gcc -o $@ $+
obj/06_collatz.o : 06_collatz.s
	as -o $@ $<

bin/08_array01 : obj/08_array01.o
	gcc -o $@ $+
obj/08_array01.o : 08_array01.s
	as -o $@ $<

bin/06_loop01 : obj/06_loop01.o
	gcc -o $@ $+
obj/06_loop01.o : 06_loop01.s
	as -o $@ $<
