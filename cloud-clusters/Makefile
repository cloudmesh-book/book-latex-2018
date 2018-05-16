
INDEX=preface.md\
      contributors.md\
      sd-card.md\
      chapters/linux/linux.md\
      chapters/raspberry/README.md\
      chapters/raspberry/motherboard-led.md\
			chapters/raspberry/config-display.md\
			references.md

epub:
	pandoc -f markdown+smart -f markdown+emoji --toc --number-sections --epub-embed-font='fonts/*.ttf' --bibliography refernces.bib  --csl=ieee-with-url.csl -o book.epub metadata.txt $(INDEX)


html:
	pandoc -f markdown+smart -f markdown+emoji --toc --number-sections --epub-embed-font='fonts/*.ttf' --bibliography refernces.bib  --csl=ieee.csl -o book.html metadata.txt $(INDEX)

pdf:
	pandoc -f markdown+smart --toc --epub-embed-font='fonts/*.ttf' -V geometry:margin=1in --bibliography refernces.bib --csl=ieee.csl -o book.pdf metadata.txt $(INDEX)

tex:
	pandoc -f markdown+smart -f markdown+emoji --toc --epub-embed-font='fonts/*.ttf' --bibliography refernces.bib --csl=ieee.csl -o book.tex metadata.txt $(INDEX)
	pdflatex content.tex


clean:
	rm -rf book.*
