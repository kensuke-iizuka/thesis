INPUT=main.tex

OUTPUT=main

UNAME := $(shell uname -s)
  ifeq ($(UNAME),Linux)
    SYSTEM := LINUX
	VIEWER=start evince
  endif
  ifeq ($(UNAME),Darwin)
    SYSTEM := OSX
	VIEWER=open -a /Applications/Skim.app
  endif

all:
	latexmk -jobname=$(OUTPUT) $(INPUT)

clean:
	latexmk -CA -jobname=$(OUTPUT) $(INPUT)
	find . -name *.aux -delete
	find . -name *.log -delete
	rm -rf *.bbl

view:
	latexmk -pv -jobname=$(OUTPUT) $(INPUT)

watch:
	latexmk -pvc -jobname=$(OUTPUT) $(INPUT)