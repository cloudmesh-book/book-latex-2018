
all:
	pdflatex main
	makeindex main.idx -s StyleInd.ist
	biber main
	pdflatex main x 2

theory:
	python book.py

fetch:
	cd chapter; make

old:
	pdflatex main
	makeindex main.idx -s StyleInd.ist
	biber main
	pdflatex main x 2

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
	open main.pdf
