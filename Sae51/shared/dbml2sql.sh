#!/bin/bash
#correction du fichier renderer.js
./correction.sh
for a in *.dbml
do
    name=${a%.dbml}
    echo "processing $name"
    dbml2sql $a > $name.sql
    dbml-renderer -i $a -o $name.svg
done
