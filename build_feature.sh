#!/bin/bash

ROOT_PATH=$PWD

DEBUG=0

debug (){
  [[ $DEBUG -eq 1 ]] && echo "[DEBUG]: $1"
}

for folder in */; do
    cd $folder
    debug "Moving to $folder"
    echo "Creating main adoc for feature $folder"
    name=$(echo $folder | tr '[:upper:]' '[:lower:]' | tr -d "/")
    debug "Name of .adoc ($name)"
    rm ./*.adoc 2> /dev/null
    asciidoctor-reducer ./src/00_*.adoc -o ${name}.adoc
    cd $ROOT_PATH
done
