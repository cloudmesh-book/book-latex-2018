
INDEX=\
 ./dest/chapters/todo.md\
 ./dest/chapters/preface.md\
 ./dest/chapters/contributors.md\
 ./dest/chapters/iot/dexter.md\
 ./dest/chapters/iot/easyplug.md\
 ./dest/chapters/iot/esp8266.md\
 ./dest/chapters/iot/fundamentals.md\
 ./dest/chapters/iot/grovepi.md\
 ./dest/chapters/iot/hardware.md\
 ./dest/chapters/iot/introduction.md\
 ./dest/chapters/iot/pi.md\
 ./dest/chapters/iot/projects.md\
 ./dest/chapters/iot/sensors.md\
 ./dest/chapters/iot/tools.md\
 ./dest/chapters/iot/turtle.md\
 ./dest/chapters/iot/vnc.md\
 ./dest/chapters/msg/mqtt.md\
 ./dest/chapters/msg/graphql.md\
 ./dest/chapters/rest/rest.md\
 ./dest/chapters/rest/swagger-bravado.md\
 ./dest/chapters/rest/swagger-codegen.md\
 ./dest/chapters/rest/swagger-spec.md\
 ./dest/chapters/rest/swagger.md\
 ./dest/chapters/prg/SECTION-PYTHON.md\
 ./dest/chapters/prg/python.md\
 ./dest/chapters/prg/python-install.md\
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
 ./dest/chapters/clusters/pi-now.md\
 ./dest/chapters/modify-pi-image.md\
 ./dest/chapters/pi/pi-passwordreset.md\
 ./dest/chapters/clusters/pxe.md\
 ./dest/chapters/clusters/pi-assemble-cluster.md\
 ./dest/chapters/clusters/pi-configure-cluster.md\
 ./dest/chapters/clusters/pi-docker.md\
 ./dest/chapters/clusters/pi-dockerswarm.md\
 ./dest/chapters/clusters/kubernetes-526/readme-kube.md\
 ./dest/chapters/clusters/kubernetes-417/pi-kubernetes.md\
 ./dest/chapters/clusters/pi-spark.md\
 ./dest/chapters/clusters/pi-software.md\
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
RESOURCE=--resource-path=".:chapters/prg:chapters/iot"
FILENAME=vonlaszewski-cloud-cluster

#	pandoc ./chapters/prg/python.md -o dest/chapters/prg/python.md --base-header-level=2

epub:
	mkdir -p dest/chapters/prg
	bin/section.py 1 "Python" > dest/chapters/prg/SECTION-PYTHON.md
	bin/markup-all.py
	pandoc $(RESOURCE) $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) $(CSS) -o $(FILENAME).epub metadata.txt $(INDEX)


html:
	pandoc $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) -o $(FILENAME).html metadata.txt $(INDEX)

pdf:
	pandoc -f markdown+smart --toc --epub-embed-font='fonts/*.ttf' -V geometry:margin=1in --bibliography refernces.bib --csl=ieee.csl -o $(FILENAME).pdf metadata.txt $(INDEX)

tex:
	pandoc -f markdown+smart -f markdown+emoji --toc --epub-embed-font='fonts/*.ttf' --bibliography refernces.bib --csl=ieee.csl -o $(FILENAME).tex metadata.txt $(INDEX)
	pdflatex content.tex


clean:
	rm -rf $(FILENAME).*
	rm -rf dest

list:
	@echo "----"
	@find . -name "*.md"
	@echo "----"
	@echo "Markdown Files": `find . -name "*.md" | wc -l`
	@echo "----"
	@find . -name "*.md"	| sed -e 's/^/ /' | sed 's/$$/\\/'

view:
	open $(FILENAME).epub
