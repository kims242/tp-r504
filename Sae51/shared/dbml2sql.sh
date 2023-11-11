#!/bin/bash

#correction du fichier renderer.js
./srv/correction.sh

echo 'CREATE DATABASE IF NOT EXISTS sae51db; USE sae51db;' > srv/bdd1.sql

for a in srv/*.dbml
do
    name=${a%.dbml}
    echo "processing $name"
    dbml2sql $a >> $name.sql
    dbml-renderer -i $a -o $name.svg
    dbml-renderer -i $a -o $name.png
done
