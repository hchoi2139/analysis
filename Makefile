DOCNAME=main

all: report

.PHONE: clean

report:
	pdflatex $(DOCNAME).tex
	bibtex $(DOCNAME).aux
	pdflatex $(DOCNAME).tex
	pdflatex $(DOCNAME).tex
	make clean

view: report
	open $(DOCNAME).pdf

clean:
	rm *.blg *.bbl *.aux *.log *.lof *.lot *.out *.toc