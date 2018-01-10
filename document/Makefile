INPUT=main.tex

OUTPUT=main


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