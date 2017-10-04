import os
import sys


def prepender(filename, line):
    with open(filename, 'r+') as f:
        content = f.read()
        f.seek(0, 0)
        f.write(line.rstrip('\r\n') + '\n' + content)
        
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
        'from': from_dir,
        'start': "\\begin{fileremark}\\url{https://github.com/cloudmesh/classes/blob/master/docs/source/",
        'stop': "}\\end{fileremark}"
        }
    os.system("mkdir -p {to}".format(**data))
    os.system("rm -f {to}/{base}.{format}".format(**data))
                  
    os.system("cp ~/github/cloudmesh/classes/docs/source/{from}/{base}.{format} {to}".format(**data))
    os.system("sed -i -- 's/.. code:: python/::/g' {to}/{base}.{format}".format(**data))
    os.system("pandoc {to}/{base}.{format} -o {to}/{base}.tex".format(**data))
    prepender("{to}/{base}.tex".format(**data),
              '{start}{from}/{base}.{format}{stop}\n'.format(**data))


######################################################################
# Writing
######################################################################

for lesson in [
        ["report-book", "lesson/doc", "rst", "chapter/lesson/doc"],        
        ["report", "lesson/doc", "rst", "chapter/lesson/doc"],
        ["latex", "lesson/doc", "rst", "chapter/lesson/doc"],
        ["bibtex", "lesson/doc", "rst", "chapter/lesson/doc"],
        ["emacs", "lesson/doc", "rst", "chapter/lesson/doc"],
        ["rst", "lesson/doc", "rst", "chapter/lesson/doc"],
        ["markdown", "lesson/doc", "rst", "chapter/lesson/doc"],
        ["type", "lesson/doc", "rst", "chapter/lesson/doc"],                
        ]:
    convert(lesson[0], lesson[2], lesson[1], lesson[3])





    
######################################################################
# CLOUD LECTURES
######################################################################
    
for lesson in [
    ["fundamentals", "icloud/2017/course",    "rst"],
    ["iaas", "icloud/2017/course",    "rst"],
    ["mapreduce", "icloud/2017/course",    "rst"],
    ["iterative-mapreduce", "icloud/2017/course",    "rst"],
    ["nosql", "icloud/2017/course",    "rst"],
    ["iot", "icloud/2017/course",    "rst"],
    ["saas", "icloud/2017/course",    "rst"],        
]:
    convert(lesson[0], lesson[2], lesson[1], "chapter/cloud")



for lesson in [
        ["index", "icloud/2017/assignment", "rst", "chapter/cloud/assignment"],
        ["index", "icloud/2017/evaluation", "rst", "chapter/cloud/evaluation"],
        ["index", "icloud/2017/participation", "rst", "chapter/cloud/participation"]
        ]:
    convert(lesson[0], lesson[2], lesson[1], lesson[3])


'''
   assignment/index.rst
   evaluation/index.rst
   participation/index.rst
'''
    
######################################################################
# ipynb
######################################################################

os.system("cp -r ~/github/cloudmesh/classes/docs/source/notebooks .")

for n in ["fingerprint_matching", "facedetection", "scikit-learn-k-means"]:

    notebook(n, "notebooks")


######################################################################
# i523 theory
######################################################################

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


######################################################################
# i523 preface
######################################################################


convert("about",        "rst", "i524/2017/preface", "chapter/intro")
convert("preface",      "rst", "i523/2017",         "chapter/intro")
convert("overview",     "rst", "i523/2017",         "chapter/intro")
convert("disclaimer",   "rst", "i524/2017/preface", "chapter/intro")
convert("fall2017",     "rst", "i523/2017",         "chapter/intro")
convert("project",      "rst", "i523/2017",         "chapter/intro")
convert("assignments",  "rst", "i523/2017",         "chapter/intro")
convert("git",          "rst", "i523/2017",         "chapter/intro")
convert("organization", "rst", "i523/2017",         "chapter/intro")

######################################################################
# i523 practice
######################################################################


for lesson in [
    ["linux", "lesson/linux"],
    ["virtualbox", "lesson/linux"],
    ["code", "i523/2017"],
    ["iot","i523/2017"]
]:
    convert(lesson[0], "rst", lesson[1], "chapter/lesson")



######################################################################
# i523 iot
######################################################################

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


######################################################################
# i523 python
######################################################################

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



