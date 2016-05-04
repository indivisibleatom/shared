.PHONY: all clean

all: pdf

pdf: customCommands.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" \
		-use-make customCommands.tex -jobname=build/customCommands

clean:
	latexmk -jobname=build/customCommands -CA -bibtex

