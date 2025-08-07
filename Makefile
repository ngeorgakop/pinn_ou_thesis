# Makefile for thesis compilation

# Default target
all: thesis.pdf

# Full compilation with bibliography
thesis.pdf: thesis.tex thesis_references.bib
	pdflatex -interaction=nonstopmode thesis.tex
	bibtex thesis
	pdflatex -interaction=nonstopmode thesis.tex
	pdflatex -interaction=nonstopmode thesis.tex

# Quick compilation (no bibliography update)
quick:
	pdflatex -interaction=nonstopmode thesis.tex

# Clean all auxiliary files
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.synctex.gz

# Clean everything including PDF
cleanall: clean
	rm -f thesis.pdf

# View the PDF (macOS)
view: thesis.pdf
	open thesis.pdf

.PHONY: all quick clean cleanall view