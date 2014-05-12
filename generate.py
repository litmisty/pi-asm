#!/usr/bin/env python
import glob

sources = glob.glob("*.s")

names = [s.split('.')[0] for s in sources]

all_content = "all: %s" % (' '.join("bin/%s" % n for n in names))

target_template = """
bin/{name} : obj/{name}.o
	gcc -o $@ $+
obj/{name}.o : {name}.s
	as -o $@ $<
"""

f = open("Makefile", "w+")

f.write(all_content)
f.write("\n")

for n in names:
	f.write(target_template.format(name=n))

f.close()
