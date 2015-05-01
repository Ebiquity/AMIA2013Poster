.PHONY: all clean view

all: PosterPres.pdf

%.tex: %.md
	wiki2beamer  $< > $@

SECTIONS = intro.tex causes.tex solutionsOtherFields.tex bigdatatools.tex own_work.tex



clean:
	-rm -f PosterPres.aux 
	-rm -f *.aux 
	-rm -f *.log 
	-rm -f *.nav 
	-rm -f *.out 
	-rm -f *.snm 
	-rm -f *.toc 
	-rm -f PosterPres.pdf 


PosterPres.pdf: PosterPres.tex  
	pdflatex  PosterPres
	pdflatex  PosterPres

view: PosterPres.pdf
	evince PosterPres.pdf


