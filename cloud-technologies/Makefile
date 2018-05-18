
INDEX=\
 ./chapters/todo.md\
 ./chapters/preface.md\
 ./chapters/contributors.md\
 ./README.md\
 ./template/technologies.md\
 ./all.md\
 ./template/incomming.md\
 ./incomming.md\
 ./template/refernces.md



MARKDOWN-OPTIONS=-f markdown+smart -f markdown+emoji --indented-code-classes=bash,python,yaml
CSL=--csl=template/ieee-with-url.csl
FORMAT=--toc --number-sections
FONTS=--epub-embed-font='fonts/*.ttf'
BIB=--bibliography all.bib
CSS=--css=template/epub.css

epub: tech
	pandoc $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) $(CSS) -o book.epub metadata.txt $(INDEX)


tech:
	cat chapters/tech/*.md > all.md
	find incomming/*.md | xargs -I{} sh -c "cat {}; echo ''" >  incomming.md
	cat incomming/*.bib > incomming.bib
	cat references.bib incomming.bib > all.bib


html:
	pandoc $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) -o book.html metadata.txt $(INDEX)

pdf:
	pandoc -f markdown+smart --toc --epub-embed-font='fonts/*.ttf' -V geometry:margin=1in --bibliography refernces.bib --csl=ieee.csl -o book.pdf metadata.txt $(INDEX)

tex:
	pandoc -f markdown+smart -f markdown+emoji --toc --epub-embed-font='fonts/*.ttf' --bibliography refernces.bib --csl=ieee.csl -o book.tex metadata.txt $(INDEX)
	pdflatex content.tex


clean:
	rm -rf book.*


list:
	@echo "----"
	@find . -name "*.md"
	@echo "----"
	@echo "Markdown Files": `find . -name "*.md" | wc -l`
	@echo "----"
	@find . -name "*.md"	| sed -e 's/^/ /' | sed 's/$$/\\/'
