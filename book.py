import os
import sys

def notebook(base, directory="notebooks"):
    data = {
        'base': base,
        'dir': directory
        }
    os.system("cd {dir}; ipython nbconvert {base}.ipynb --to rst".format(**data))
    os.system("cd {dir}; pandoc {base}.rst -o {base}.tex".format(**data))

def convert (base, format, from_dir, to_dir):

    print (base, format, from_dir, to_dir)
    data = {
        'base': base,
        'format': format,
        'to': to_dir,
        'from': from_dir
        }
    os.system("mkdir -p {to}".format(**data))
    os.system("rm -f {to}/{base}.{format}".format(**data))
                  
    os.system("cp ~/github/cloudmesh/classes/docs/source/{from}/{base}.{format} {to}".format(**data))
    os.system("sed -i -- 's/.. code:: python/::/g' {to}/{base}.{format}".format(**data))
    os.system("pandoc {to}/{base}.{format} -o {to}/{base}.tex".format(**data))


os.system("cp -r ~/github/cloudmesh/classes/docs/source/notebooks .")

for n in ["fingerprint_matching", "facedetection", "scikit-learn-k-means"]:

    notebook(n, "notebooks")

sys.exit()

convert("cloud",        "rst", "i523/2017/course","chapter/theory")
convert("clustering",   "rst", "i523/2017/course","chapter/theory")
convert("health",       "rst", "i523/2017/course","chapter/theory")
convert("introduction", "rst", "i523/2017/course","chapter/theory")
convert("lifestyle",    "rst", "i523/2017/course","chapter/theory")
convert("overview",     "rst", "i523/2017/course","chapter/theory")
convert("physics",      "rst", "i523/2017/course","chapter/theory")
convert("python-tech",  "rst", "i523/2017/course","chapter/theory")
convert("python",       "rst", "i523/2017/course","chapter/theory")
convert("radar",        "rst", "i523/2017/course","chapter/theory")
convert("sensor",       "rst", "i523/2017/course","chapter/theory")
convert("sport",        "rst", "i523/2017/course","chapter/theory")
convert("technology",   "rst", "i523/2017/course","chapter/theory")
convert("usecases",     "rst", "i523/2017/course","chapter/theory")
convert("web",          "rst", "i523/2017/course","chapter/theory")



convert("about",        "rst", "i524/2017/preface", "chapter/intro")
convert("preface",      "rst", "i523/2017",         "chapter/intro")
convert("overview",     "rst", "i523/2017",         "chapter/intro")
convert("disclaimer",   "rst", "i524/2017/preface", "chapter/intro")
convert("fall2017",     "rst", "i523/2017",         "chapter/intro")
convert("project",      "rst", "i523/2017",         "chapter/intro")
convert("assignments",  "rst", "i523/2017",         "chapter/intro")
convert("git",          "rst", "i523/2017",         "chapter/intro")
convert("organization", "rst", "i523/2017",         "chapter/intro")


for lesson in [
    ["linux", "lesson/linux"],
    ["virtualbox", "lesson/linux"],
    ["code", "i523/2017"],
    ["iot","i523/2017"]
]:
    convert(lesson[0], "rst", lesson[1], "chapter/lesson")

# ["pi", "chapter/lesson/iot/pi/pi", "md"],

for lesson in [
    ["introduction", "lesson/iot",    "md"],
    ["hardware",     "lesson/iot",    "md"],
    ["projects",     "lesson/iot",    "md"],
    ["esp8266",      "lesson/iot/esp8266", "md"],
    ["pi",           "lesson/iot/pi", "md"],
    ["dexter",       "lesson/iot/pi", "md"],
    ["grovepi",      "lesson/iot/pi", "md"],
    ["sensors",      "lesson/iot/pi", "md"],
    ["vnc",          "lesson/iot/pi", "md"],
    ["turtle",       "lesson/iot",    "md"],
    ["tools",        "lesson/iot",    "md"],
]:
    convert(lesson[0], lesson[2], lesson[1], "chapter/lesson/iot")

for lesson in [
    ["python-intro", "lesson/prg"],
    ["python-install", "lesson/prg"],
    ["python", "lesson/prg"],
]:
    convert(lesson[0], "rst", lesson[1], "chapter/prg")

'''
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
    
'''
