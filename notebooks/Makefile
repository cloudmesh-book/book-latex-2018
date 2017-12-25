all:
#	cp -r fingerprint/fingerprint_matching.ipynb tmp; cd tmp; jupyter nbconvert --to latex fingerprint_matching.ipynb
	cp -r fingerprint/fingerprint_matching.ipynb tmp; cd tmp; jupyter nbconvert --to rst fingerprint_matching.ipynb
	cd tmp; pandoc fingerprint_matching.rst -o fingerprint_matching.tex 
