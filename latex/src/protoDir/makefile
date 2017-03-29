.PHONY: all clean

all: pdf

pdf: proto.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" \
		-use-make proto.tex -jobname=proto -pv

clean:
	latexmk -jobname=proto -CA -bibtex

