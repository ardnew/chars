#!/bin/bash

# absolute path to override alias
#   ("command cat" and "\cat" can't be called by exec)
cat=$( type -P cat ) &&
	exec "$cat" "${0%/*}/../share/ascii.tbl/charclass.tbl"
