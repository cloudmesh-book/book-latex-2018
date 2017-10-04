.PHONY: book images

FILE=vonLaszewski-bigdata
#FLAGS=-interaction nonstopmode -halt-on-error -file-line-error
FLAGS=-interaction nonstopmode  -file-line-error

all:
	pdflatex $(FLAGS) $(FILE)
	makeindex $(FILE).idx -s StyleInd.ist
	biber $(FILE)
	pdflatex $(FLAGS)  $(FILE) x 2
	pdflatex $(FLAGS)  $(FILE) x 2

book:
	python book.py


images:
	cp -r ~/github/cloudmesh/classes/docs/source/images/ images

fetch:
	cd chapter; make

old:
	pdflatex $(FILE)
	makeindex $(FILE).idx -s StyleInd.ist
	biber $(FILE)
	pdflatex $(FILE) x 2

clean:
	rm -f *.aux
	rm -f *.ist
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.pdf
	rm -f *.ptc
	rm -f *.run.xml
	rm -f *.toc

view:
	open $(FILE).pdf
