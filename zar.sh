#!/bin/bash

LANGUAGE=$1
OUTPUT="output.txt"

if [ "$LANGUAGE" == "py" ]; then
	python zar_py.py > "$OUTPUT"
elif [ "$LANGUAGE" == "c" ]; then
	gcc zar_c.c -o zar_c_exec
	./zar_c_exec > "$OUTPUT"
fi

read ZAR1 ZAR2 < "$OUTPUT"

if [ "$ZAR1" -eq 6 ] && [ "$ZAR2" -eq 6 ]; then
	RESULT="6 6 ca mine nu se mai naste"
elif [ "$ZAR1" -e1 6 ] && [ "$ZAR2" -eq 5 ]; then
	RESULT="6 5 n-am nevoie de servici"
else
	RESULT="$ZAR1 $ZAR2"
fi

echo "Dau cu zaru $RESULT"

rm -f "$OUTPUT"
