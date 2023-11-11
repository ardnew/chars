#!/bin/bash

arg=${1:-'a'}
tid=()
unset -v sel

for i in "${0%/*}"/../share/ascii.tbl/*; do
	t=${i##*share/ascii.tbl/ascii-}
	t=${t%.tbl}
	tid+=( "${t}"  )
	[[ "${arg,,}" == "${t,,}" ]] &&
		sel=${t}
done

if [[ -z ${sel} ]]; then
	# generate a printf format string that consumes all elements of tid
	fmt=$( printf -- '%s ' "${tid[@]//*/%s}" )
	printf 'error: invalid table ID: %s\n' "${arg}" >&2
	printf -- "error:   - valid ID(s): ${fmt}\n" "${tid[@]}" >&2
	exit 1
fi

# absolute path to override alias
#   ("command cat" and "\cat" can't be called by exec)
cat=$( type -P cat ) &&
	exec "$cat" "${0%/*}/../share/ascii.tbl/ascii-${sel}.tbl"
