DEPS = *.tex bib/*.bib 

all: surfp

surfp: surfp.tex $(DEPS)
	pdflatex surfp.tex
	-bibtex surfp
	pdflatex surfp.tex
	pdflatex surfp.tex
clean:
	rm -f surfp.pdf *.aux *.log *.bbl *.blg bib/texput.log
