#!/bin/bash
allfiles=""
for filename in *.pdf; do
	allfiles="${allfiles} ${filename}"
done
pdftk $allfiles cat output merged.pdf
