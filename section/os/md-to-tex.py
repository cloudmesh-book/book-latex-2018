#!/usr/bin/env python

#
# usage python md-to-tex.py ubuntu-usb-osx.md 
#

import re
import sys
import subprocess

filename = sys.argv[1]

data = subprocess.check_output(["pandoc","-t", "latex", filename]).decode("utf-8")  
    
#origText = '''
#Some text here..
#more text before...
#\hypertarget{ubuntu-on-a-usb-stick-for-osx}{%
#\section{Ubuntu on a USB stick for
#OSX}\label{ubuntu-on-a-usb-stick-for-osx}}
#Text after...
#more text after..
#
#\hypertarget{another section}{%
#\section{I am another
#section}\label{another section}}
#
#more text even...
#
#'''

original = data.replace("{verbatim}", "{lstlisting}").replace("\\tightlist\n","")
output = original

def substitute_section(name, origText):

    finished = False    
    newText = origText
    while not finished:
        sectionBlockPtstr = '(.*?)(\\\hypertarget(.*?)\\\label(.*?)}})(.*)'

        pt1 = re.compile(sectionBlockPtstr, re.M | re.I | re.S)
        try:
            sectionBlockMatch = re.match(pt1, origText).group(2)

            sectionOnlyPtstr = '\\\hypertarget(.*?)\\\{section}(.*?)\\\label(.*?)}}'.format(section=name)
            pt1 = re.compile(sectionOnlyPtstr, re.M | re.I | re.S)
            sectionOnlyMatch = '\{section}%s'.format(section=name) % re.match(pt1, sectionBlockMatch).group(2).replace('\n', ' ')

            newText = origText.replace(sectionBlockMatch, sectionOnlyMatch)
            origText = newText
        except:
            finished = True
    return newText

#Hack to get all the sections out

while 'hypertarget' in original:
    tmp_section = substitute_section("section", original)
    tmp_subsection = substitute_section("subsection", tmp_section)
    tmp_subsubsection = substitute_section("subsubsection", tmp_subsection)
    tmp_paragraph = substitute_section("paragraph", tmp_subsubsection)

    output = tmp_paragraph
    original = output

print (output)
