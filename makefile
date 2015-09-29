INPUT_NAME = notes
OUTPUT_NAME = distri-notes

all: build

build: ${OUTPUT_NAME}.pdf

${OUTPUT_NAME}.pdf:
	latexmk -pdf -pdflatex="pdflatex -halt-on-error" ${INPUT_NAME}.tex
	mv ${INPUT_NAME}.pdf ${OUTPUT_NAME}.pdf

clean:
	rm *.pdf *.aux *.log *.toc
