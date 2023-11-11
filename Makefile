default := /usr/local

ifeq ($(PREFIX),)
    PREFIX := $(default)
endif

table := $(wildcard *.tbl)
script := $(wildcard *.sh)

datadir = $(DESTDIR)$(PREFIX)/share/ascii.tbl
bindir = $(DESTDIR)$(PREFIX)/bin

.PHONY: install

install: $(table) $(script)

$(table):: $(datadir)
	install -m 644 $@ $^/$@

$(script):: $(bindir)
	install -m 755 $@ $^/$(basename $@)

$(datadir) $(bindir):
	install -d $@
