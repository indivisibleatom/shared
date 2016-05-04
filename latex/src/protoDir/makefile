.PHONY: all clean

all: pdf

pdf: proto.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" \
		-use-make proto.tex -jobname=build/proto

clean:
	latexmk -jobname=build/proto -CA -bibtex

