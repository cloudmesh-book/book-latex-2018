.PHONY: book images

FILE=vonLaszewski-bigdata
#FLAGS=-interaction nonstopmode -halt-on-error -file-line-error
#FLAGS=-interaction nonstopmode  -file-line-error
FLAGS=-shell-escape
CLOUD=cloud
FLAGS=-shell-scape -output-directory=dest -aux-directory=dest


DEFAULT=$(CLOUD)

LATEX=pdflatex

#LATEX=pdfflatex
#LATEX=pydflatex -k

dest:
	mkdir -p dest

single: dest
	latexmk -jobname=dest/$(FILE) -shell-escape -pvc -view=pdf single

g: dest
	latexmk -jobname=dest/$(FILE) -shell-escape -pvc -view=pdf $(FILE)

c:
	latexmk -jobname=dest/$(FILE) -shell-escape -pvc -view=pdf chameleon

plain:
	latexmk -jobname=dest/$(FILE) -shell-escape -pvc -view=pdf plain

cloud:
	$(LATEX) $(FLAGS) $(CLOUD)
	makeindex $(CLOUD).idx -s format/StyleInd.ist
	biber $(CLOUD)
	$(LATEX) $(FLAGS)  $(CLOUD) 
	$(LATEX) $(FLAGS)  $(CLOUD)

skim:
	echo $(DEFAULT)
	open -a /Applications/skim.app $(DEFAULT).pdf

s:
	$(LATEX) $(FLAGS) single


fast:
	$(LATEX) $(FLAGS) $(FILE)

all:
	$(LATEX) $(FLAGS) $(FILE)
	makeindex $(FILE).idx -s format/StyleInd.ist
	biber $(FILE)
	$(LATEX) $(FLAGS)  $(FILE) 
	$(LATEX) $(FLAGS)  $(FILE) 


all2:
	$(LATEX) $(FLAGS) $(FILE)
	makeindex $(FILE).idx -s format/StyleInd.ist
	biber $(FILE)
	$(LATEX) $(FLAGS)  $(FILE) x 2
	$(LATEX) $(FLAGS)  $(FILE) x 2

simple:
	$(LATEX) $(FLAGS) $(FILE)
#|fgrep -v "Underfull" |fgrep -v "Overfull" | fgrep -v "undefined on input"
#	makeindex $(FILE).idx -s format/StyleInd.ist
#	biber $(FILE)
#	$(LATEX) $(FLAGS)  $(FILE) x 2
#	$(LATEX) $(FLAGS)  $(FILE) x 2

book:
	python book.py

images:
	cp -r ~/github/cloudmesh/classes/docs/source/images/ images

fetch:
	cd chapter; make

old:
	$(LATEX) $(FILE)
	makeindex $(FILE).idx -s StyleInd.ist
	biber $(FILE)
	$(LATEX) $(FILE) x 2

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
	rm -f *.markdown.out
	rm -f *.markdown.lua
	rm -f *.markdown.err
	rm -f *.fls
	rm -f *.listing
	rm -f *.fdb_latexmk
	rm -f *.synctex.gz
	rm -rf _markdown_*


view:
	open $(FILE).pdf

publish:
	cp $(FILE).pdf ~/github/laszewsk/papers/
	cd ~/github/laszewsk/papers; git add $(FILE).pdf; git commit -m "update $(FILE)"; git push
	cp $(FILE).pdf ~/github/laszewsk/laszewski.github.io/papers/$(FILE).pdf
	cd ~/github/laszewsk/laszewski.github.io/papers; git add $(FILE).pdf; git commit -m "update $(FILE)"; git push

watch:
	latexmk -pvc -view=pdf ${FILE}
