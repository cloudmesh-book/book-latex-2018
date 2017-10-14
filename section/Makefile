define generate_from_rst
  echo "$(1)"
  echo "$(2)"
  echo "$(3)"
	mkdir -p $(3)
  rm -f $(3)/$(1).rst
	cp ~/github/cloudmesh/classes/docs/source/$(2)/$(1).rst $(3)
	sed -i -- 's/.. code:: python/::/g' $(3)/$(1).rst
	pandoc $(3)/$(1).rst -o $(3)/$(1).tex
endef

define copy_lesson
	cp ~/github/cloudmesh/classes/docs/source/lesson/$(1)/$(2) .
	sed -i -- 's/.. code:: python/::/g' $(2)
	pandoc $(2) -o $(3)
endef


all: images lessons theory
	$(call generate_from_rst,about,i524/2017/preface/,intro)
	$(call generate_from_rst,preface,i523/2017/,intro)
	$(call generate_from_rst,overview,i523/2017/,intro)
	$(call generate_from_rst,disclaimer,i524/2017/preface/,intro)
	$(call generate_from_rst,fall2017,i523/2017/,intro)
	$(call generate_from_rst,project,i523/2017/,intro)
	$(call generate_from_rst,assignments,i523/2017/,intro)
	$(call generate_from_rst,git,i523/2017/,intro)
	$(call generate_from_rst,organization,i523/2017/,intro)


theory:
	$(call generate_from_rst,cloud,i524/2017/preface/,theory) 
	$(call generate_from_rst,clustering,i524/2017/preface/,theory) 
	$(call generate_from_rst,health,i524/2017/preface/,theory) 
	$(call generate_from_rst,introduction,i524/2017/preface/,theory) 
	$(call generate_from_rst,lifestyle,i524/2017/preface/,theory) 
	$(call generate_from_rst,overview,i524/2017/preface/,theory) 
	$(call generate_from_rst,physics,i524/2017/preface/,theory
	$(call generate_from_rst,python-tech,i524/2017/preface/,theory) 
	$(call generate_from_rst,python,i524/2017/preface/,theory) 
	$(call generate_from_rst,radar,i524/2017/preface/,theory) 
	$(call generate_from_rst,sensor,i524/2017/preface/,theory) 
	$(call generate_from_rst,sport,i524/2017/preface/,theory) 
	$(call generate_from_rst,technology,i524/2017/preface/,theory) 
	$(call generate_from_rst,usecases,i524/2017/preface/,theory) 
	$(call generate_from_rst,web,i524/2017/preface/,theory) 



lessons:
	$(call copy_lesson,communication,piazza.rst,piazza.tex)
	$(call copy_lesson,contrib,contributing.rst,contributing.tex)
	$(call copy_lesson,prg,python.rst,python.tex)
  $(call copy_lesson,prg,python-cmd5.rst,python-cmd5.tex)

images:
	cp -r ~/github/cloudmesh/classes/docs/source/images ../..

none:
	echo none
	#	$(call generate_from_rst,convention,i524/2017/preface/)
	#../../lesson/communication/piazza
	# ../../lesson/contrib/contributing
