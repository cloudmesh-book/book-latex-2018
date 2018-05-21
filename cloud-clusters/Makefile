
INDEX=\
 ./chapters/todo.md\
 ./chapters/preface.md\
 ./chapters/contributors.md\
 ./dest/chapters/prg/SECTION-PYTHON.md\
 ./dest/chapters/prg/python.md\
 ./dest/chapters/prg/python-cloudmesh.md\
 ./dest/chapters/prg/python-matplotlib.md\
 ./dest/chapters/prg/python-editor.md\
 ./dest/chapters/prg/python-libraries.md\
 ./dest/chapters/prg/python-cmd5.md\
 ./dest/chapters/prg/python-click.md\
 ./dest/chapters/prg/python-big-data.md\
 ./dest/chapters/prg/python-intro.md\
 ./dest/chapters/prg/python-interactive.md\
 ./dest/chapters/prg/python-data.md\
 ./dest/chapters/prg/python-libcloud.md\
 ./README.md\
 ./dest/chapters/login-node.md\
 ./dest/chapters/raspberry/README.md\
 ./dest/chapters/sd-card.md\
 ./dest/chapters/linux.md\
 ./dest/chapters/ssh/ssh.md\
 ./dest/chapters/raspberry/config-display.md\
 ./dest/chapters/raspberry/motherboard-led.md\
 ./dest/chapters/run-at-boot.md\
 ./dest/chapters/pi-now.md\
 ./dest/chapters/modify-pi-image.md\
 ./dest/chapters/pi-passwordreset.md\
 ./dest/chapters/pxe.md\
 ./dest/chapters/pi-assemble-cluster.md\
 ./dest/chapters/pi-configure-cluster.md\
 ./dest/chapters/pi-docker.md\
 ./dest/chapters/pi-dockerswarm.md\
 ./dest/chapters/kubernetes-526/readme-kube.md\
 ./dest/chapters/kubernetes-417/pi-kubernetes.md\
 ./dest/chapters/pi-spark.md\
 ./dest/chapters/pi/slurm.md\
 ./dest/chapters/pi/setup.md\
 ./dest/chapters/pi/software.md\
 ./dest/chapters/pi/cluster.md\
 ./dest/chapters/references.md


MARKDOWN-OPTIONS=-f markdown+smart -f markdown+emoji --indented-code-classes=bash,python,yaml
CSL=--csl=template/ieee-with-url.csl
FORMAT=--toc --number-sections
FONTS=--epub-embed-font='fonts/*.ttf'
BIB=--bibliography references.bib
CSS=--css=template/epub.css
RESOURCE=--resource-path=".:chapters/prg"

#	pandoc ./chapters/prg/python.md -o dest/chapters/prg/python.md --base-header-level=2

epub:
	mkdir -p dest/chapters/prg
	bin/section.py 1 "Python" > dest/chapters/prg/SECTION-PYTHON.md
	bin/markup-all.py
	pandoc $(RESOURCE) $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) $(CSS) -o book.epub metadata.txt $(INDEX)


html:
	pandoc $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) -o book.html metadata.txt $(INDEX)

pdf:
	pandoc -f markdown+smart --toc --epub-embed-font='fonts/*.ttf' -V geometry:margin=1in --bibliography refernces.bib --csl=ieee.csl -o book.pdf metadata.txt $(INDEX)

tex:
	pandoc -f markdown+smart -f markdown+emoji --toc --epub-embed-font='fonts/*.ttf' --bibliography refernces.bib --csl=ieee.csl -o book.tex metadata.txt $(INDEX)
	pdflatex content.tex


clean:
	rm -rf book.*
	rm -rf dest

list:
	@echo "----"
	@find . -name "*.md"
	@echo "----"
	@echo "Markdown Files": `find . -name "*.md" | wc -l`
	@echo "----"
	@find . -name "*.md"	| sed -e 's/^/ /' | sed 's/$$/\\/'
