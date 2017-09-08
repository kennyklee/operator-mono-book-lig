#!/bin/bash

rm original/*.ttx
ttx original/OperatorMono-Book.otf
ttx original/OperatorMono-BookItalic.otf

mkdir -p build

node index.js OperatorMono-Book
node index.js OperatorMono-BookItalic

rm -rf build/*.otf

ttx build/OperatorMonoLig-Book.ttx
ttx build/OperatorMonoLig-BookItalic.ttx
