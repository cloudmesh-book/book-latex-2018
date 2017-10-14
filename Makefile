.PHONY: book images

FILE=vonLaszewski-bigdata
#FLAGS=-interaction nonstopmode -halt-on-error -file-line-error
FLAGS=-interaction nonstopmode  -file-line-error


single:
	latexmk -pvc -view=pdf single

s:
	pdflatex $(FLAGS) single


fast:
	pdflatex $(FLAGS) $(FILE)

all:
	pdflatex $(FLAGS) $(FILE)
	makeindex $(FILE).idx -s format/StyleInd.ist
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
	rm -f *.log

view:
	open $(FILE).pdf

publish:
	cp $(FILE).pdf ~/github/laszewsk/papers/
	cd ~/github/laszewsk/papers; git add $(FILE).pdf; git commit -m "update $(FILE)"; git push
	cp $(FILE).pdf ~/github/laszewsk/laszewski.github.io/papers/$(FILE).pdf
	cd ~/github/laszewsk/laszewski.github.io/papers; git add $(FILE).pdf; git commit -m "update $(FILE)"; git push

watch:
	latexmk -pvc -view=pdf ${FILE}
