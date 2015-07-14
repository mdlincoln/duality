#!/bin/bash

jq -r '.[].name' exhibitions.json | sort | uniq > names.txt
jq -r '.[].imports[]' exhibitions.json | sort | uniq > imports.txt
diff names.txt imports.txt
rm names.txt imports.txt
