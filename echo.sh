#!/bin/bash
i=0
until [ $i -gt 999 ]
do
	i=`expr $i + 1`
	while read spot
	do
		if [ "$i" = "${spot}" ]
		then
			echo -e "\033[0m.\033[0m\c"
			continue 2
		fi
	done < vivaxy
	while read line
        do
                if [ "$i" = "${line}" ]; then echo -e "\n\c"; fi;
        done < nextline
	echo -e " \c"
done
echo -e "\n"
