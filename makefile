INPUT_NAME = notes
OUTPUT_NAME = distri-notes

all: build

build: ${OUTPUT_NAME}.pdf

${OUTPUT_NAME}.pdf:
	git rev-parse --short HEAD > rev
	latexmk -pdf -pdflatex="pdflatex -halt-on-error" ${INPUT_NAME}.tex
	mv ${INPUT_NAME}.pdf ${OUTPUT_NAME}.pdf

clean:
	rm -f *.pdf *.aux *.log *.toc *.synctex.gz *.fls *.fdb_latexmk *.out rev
