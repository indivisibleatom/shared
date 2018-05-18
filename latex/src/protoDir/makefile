.PHONY: all clean

all: pdf

pdf: main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" \
		-use-make main.tex -jobname=main -pv

clean:
	latexmk -jobname=main -CA -bibtex

