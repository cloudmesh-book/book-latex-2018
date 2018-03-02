.PHONY: book images dot

FILE=vonLaszewski-bigdata
#FLAGS=-interaction nonstopmode -halt-on-error -file-line-error
#FLAGS=-interaction nonstopmode  -file-line-error
FLAGS=-shell-escape
CLOUD=cloud
FLAGS=-shell-escape -output-directory=dest -aux-directory=dest


DEFAULT=$(CLOUD)

LATEX=pdflatex

#LATEX=pdfflatex
#LATEX=pydflatex -k


g: dest markdown
	latexmk -jobname=$(FILE) $(FLAGS) -pvc -view=pdf $(FILE)

once: dest markdown
	latexmk -jobname=$(FILE) $(FLAGS) -view=pdf $(FILE)
	make html

abc:
	latexmk -jobname=b $(FLAGS) -pvc -view=pdf b

travis: dest markdown
	latexmk -pdflatex='pdflatex -file-line-error -synctex=1' -jobname=$(FILE) $(FLAGS) -pdf $(FILE)

issues: clean dest
	python bin/issues.py > section/preface/issues.tex
	pdflatex issues
	#latexmk -jobname=issues $(FLAGS) -view=pdf issues

dot:
	cd dot; dot -Tpdf gr.dot -o gr.pdf

markdown:
	bin/md-all-to-tex.py

test: dest markdown
	pdflatex $(FILE)

gg: dest markdown
	pdflatex -shell-escape $(FILE)

check:
	make gg

pdflatex:
	make gg

google:
	gdrive update 1Mdd_TJcbXurJYRpG2gKCVqWmbhvED2Mp dest/vonLaszewski-bigdata.pdf

single: dest
	latexmk -jobname=single $(FLAGS) -pvc -view=pdf single

draft: clean dest
	curl -s https://raw.githubusercontent.com/cloudmesh-community/hid-sp18-508/master/cluster/sd-card-osx.md > tmp/sd-card-osx.md
	curl -s https://raw.githubusercontent.com/cloudmesh-community/hid-sp18-503/master/cluster/sd-card-ubuntu.md > tmp/sd-card-ubuntu.md
	curl -s https://raw.githubusercontent.com/cloudmesh-community/hid-sp18-602/master/cluster/sd-card-windows.md > tmp/sd-card-windows.md
	curl -s https://raw.githubusercontent.com/cloudmesh-community/hid-sp18-421/master/cluster/ssh-keygen.md > tmp/ssh-keygen.md
	curl -s https://raw.githubusercontent.com/cloudmesh-community/hid-sp18-412/master/cluster/readme-spark.md > tmp/readme-spark.md
	curl -s https://raw.githubusercontent.com/cloudmesh-community/hid-sp18-526/master/cluster/readme-kube.md > tmp/readme-kube.md
	curl -s https://raw.githubusercontent.com/cloudmesh-community/hid-sp18-405/master/Cluster/pi-dhcp.md > tmp/pi-dhcp.md
	bin/md-tmp-to-tex.py
	latexmk -jobname=draft $(FLAGS) -view=pdf draft

dd: dest
	cd tmp; python ../bin/md-all-to-tex.py
	latexmk -jobname=draft $(FLAGS) -pvc -view=pdf draft

c: dest
	latexmk -jobname=$(FILE) $(FLAGS) -pvc -view=pdf chameleon

plain: dest
	latexmk -jobname=$(FILE) $(FLAGS) -pvc -view=pdf plain

cloud: dest markdown
	$(LATEX) $(FLAGS) $(CLOUD)
	makeindex $(CLOUD).idx -s format/StyleInd.ist
	biber $(CLOUD)
	$(LATEX) $(FLAGS)  $(CLOUD) 
	$(LATEX) $(FLAGS)  $(CLOUD)

skim: dest
	echo $(DEFAULT)
	open -a /Applications/skim.app $(DEFAULT).pdf

all: dest makedown
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
	rm -fr single
	rm -fr $(FILE)
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
	rm -rf dest
	rm -rf *.tdo
	find . -name '*.aux' -delete
	rm -fr _minted-*
	rm -f tmp/*

view:
	open dest/$(FILE).pdf

publish: google
	echo pdf document copied to google
#	cp dest/$(FILE).pdf .
#	cp $(FILE).pdf ~/github/laszewsk/papers/
#	cd ~/github/laszewsk/papers; git add $(FILE).pdf; git commit -m "update $(FILE)"; git push
#	cp $(FILE).pdf ~/github/laszewsk/laszewski.github.io/papers/$(FILE).pdf
#	cd ~/github/laszewsk/laszewski.github.io/papers; git add $(FILE).pdf; git commit -m "update $(FILE)"; git push
	make -f Makefile.publish

html:
	mkdir -p ~/pdf
	cp dest/$(FILE).pdf ~/pdf
	docker run -ti --rm -v ~/pdf:/pdf bwits/pdf2htmlex pdf2htmlEX --zoom 1.3 $(FILE).pdf 
	# gdrive update 10zA34VsM-WnsQo31rHzDOtqdU3rqvkvQ ~/pdf/vonLaszewski-bigdata.html

size:
	du -c -h dest/vonLaszewski-bigdata.pdf | fgrep total > dest/size.txt
	du -c -h dest/vonLaszewski-bigdata.pdf | fgrep total 


watch:
	latexmk -pvc -view=pdf ${FILE}

dest:
	mkdir -p dest/format
	mkdir -p dest/notebooks
	mkdir -p dest/notebooks/dask
	mkdir -p dest/notebooks/facedetection
	mkdir -p dest/notebooks/facedetection/facedetection_files
	mkdir -p dest/notebooks/files
	mkdir -p dest/notebooks/fingerprint
	mkdir -p dest/notebooks/fingerprint/fingerprint_matching_files
	mkdir -p dest/notebooks/machinelearning
	mkdir -p dest/notebooks/numpy
	mkdir -p dest/notebooks/opencv
	mkdir -p dest/notebooks/opencv/opencv_files
	mkdir -p dest/notebooks/opencv/secchi
	mkdir -p dest/notebooks/opencv/secchi/data
	mkdir -p dest/notebooks/opencv/secchi-a
	mkdir -p dest/notebooks/py-data-analysis-dask
	mkdir -p dest/notebooks/scikit-learn
	mkdir -p dest/notebooks/scikit-learn/scikit-learn-k-means_files
	mkdir -p dest/notebooks/scipy
	mkdir -p dest/notebooks/tmp
	mkdir -p dest/notebooks/tmp/fingerprint_matching_files
	mkdir -p dest/part
	mkdir -p dest/section
	mkdir -p dest/section/art
	mkdir -p dest/section/cloud
	mkdir -p dest/section/cloud/assignment
	mkdir -p dest/section/cloud/chameleon
	mkdir -p dest/section/cloud/evaluation
	mkdir -p dest/section/cloud/participation
	mkdir -p dest/section/cluster
	mkdir -p dest/section/cluster/pi
	mkdir -p dest/section/container
	mkdir -p dest/section/courses
	mkdir -p dest/section/doc
	mkdir -p dest/section/intro
	mkdir -p dest/section/faas
	mkdir -p dest/section/git
	mkdir -p dest/section/hadoop
	mkdir -p dest/section/i524
	mkdir -p dest/section/icloud
	mkdir -p dest/section/icloud/assignment
	mkdir -p dest/section/icloud/assignment/deprecated
	mkdir -p dest/section/icloud/assignment/deprecated/exercise-old7
	mkdir -p dest/section/icloud/assignment/exercise0
	mkdir -p dest/section/icloud/assignment/exercise1
	mkdir -p dest/section/icloud/assignment/exercise2
	mkdir -p dest/section/icloud/assignment/exercise3
	mkdir -p dest/section/icloud/assignment/exercise4
	mkdir -p dest/section/icloud/assignment/exercise5
	mkdir -p dest/section/icloud/assignment/exercise6
	mkdir -p dest/section/icloud/assignment/exercise7
	mkdir -p dest/section/icloud/assignment/exercise7/code-base
	mkdir -p dest/section/icloud/assignment/exercise7/code-base/input
	mkdir -p dest/section/icloud/assignment/exercise7/code-base/simplepagerank
	mkdir -p dest/section/icloud/assignment/exercise8
	mkdir -p dest/section/icloud/course
	mkdir -p dest/section/iot
	mkdir -p dest/section/new
	mkdir -p dest/section/preface
	mkdir -p dest/section/prg
	mkdir -p dest/section/rest
	mkdir -p dest/section/theory
	mkdir -p dest/section/cluster/pi
	mkdir -p dest/section/cluster/pi/images
	mkdir -p dest/contrib
	mkdir -p dest/tmp
