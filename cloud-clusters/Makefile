
INDEX=\
 ./chapters/todo.md\
 ./chapters/preface.md\
 ./chapters/contributors.md\
 ./README.md\
 ./chapters/login-node.md\
 ./chapters/raspberry/README.md\
 ./chapters/sd-card.md\
 ./chapters/linux.md\
 ./chapters/ssh/ssh.md\
 ./chapters/raspberry/config-display.md\
 ./chapters/raspberry/motherboard-led.md\
 ./chapters/run-at-boot.md\
 ./chapters/pi-now.md\
 ./chapters/modify-pi-image.md\
 ./chapters/pi-passwordreset.md\
 ./chapters/pxe.md\
 ./chapters/pi-assemble-cluster.md\
 ./chapters/pi-configure-cluster.md\
 ./chapters/pi-docker.md\
 ./chapters/pi-dockerswarm.md\
 ./chapters/kubernetes-526/readme-kube.md\
 ./chapters/kubernetes-417/pi-kubernetes.md\
 ./chapters/pi-spark.md\
 ./chapters/references.md


MARKDOWN-OPTIONS=-f markdown+smart -f markdown+emoji
CSL=--csl=template/ieee-with-url.csl
FORMAT=--toc --number-sections
FONTS=--epub-embed-font='fonts/*.ttf'
BIB=--bibliography references.bib

epub:
	pandoc $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) -o book.epub metadata.txt $(INDEX)


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
