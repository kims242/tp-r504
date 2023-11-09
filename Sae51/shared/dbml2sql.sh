#!/bin/bash
for a in *.dbml
do
    name=${a%.dbml}
    echo "processing $name"
    dbml2sql $a > $name.sql
done
