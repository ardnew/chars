# wildcard expands to all existing paths found;
# and we want the first among them.
PREFIX ?= $(firstword $(wildcard ${HOME}/.local /usr/local))

datadir = $(DESTDIR)$(PREFIX)/share/ascii.tbl
bindir = $(DESTDIR)$(PREFIX)/bin

table = $(wildcard *.tbl)
script = $(wildcard *.sh)

.PHONY: all install

all:
	@echo ' · Using "make install" will run the following (PREFIX="$(PREFIX)"):'
	@make install --dry-run | sed 's/^/  | /'
	@echo ' · Dry run complete'
	@echo '  | note: Nothing installed!'

install:: $(table) $(script)

$(table)::
	-install -TDm 644 $@ $(datadir)/$@

$(script)::
	-install -TDm 755 $@ $(bindir)/$(basename $@)
