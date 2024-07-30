#!/bin/bash


for folder in */; do
    cd $folder
    echo "Creating main adoc for feature $folder"
    name=$(echo $folder | tr '[:upper:]' '[:lower:]' | tr -d "/")
    rm ./*.adoc 2> /dev/null
    asciidoctor-reducer ./src/00_*.adoc -o ${name}.adoc
done