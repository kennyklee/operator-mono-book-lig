@echo off

del .\original\*.ttx
ttx .\original\OperatorMono-Book.otf
ttx .\original\OperatorMono-BookItalic.otf

if not exist build\* mkdir build

node index.js OperatorMono-Book
node index.js OperatorMono-BookItalic

del /q .\build\*.otf

ttx .\build\OperatorMonoLig-Book.ttx
ttx .\build\OperatorMonoLig-BookItalic.ttx