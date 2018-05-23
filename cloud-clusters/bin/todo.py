#!/usr/bin/env python
import sys
import os
import fnmatch
import glob
from pprint import pprint

def recursive_glob(rootdir='.', pattern='*.md'):
	"""Search recursively for files matching a specified pattern.
	
	Adapted from http://stackoverflow.com/questions/2186525/use-a-glob-to-find-files-recursively-in-python
	"""

	matches = []
	for root, dirnames, filenames in os.walk(rootdir):
	  for filename in fnmatch.filter(filenames, pattern):
		  matches.append(os.path.join(root, filename))

	return matches

files = recursive_glob(rootdir="chapters")

def extract_todos(filename):

    if 'todo.md' in filename:
        return
    
    with open(filename, 'r') as f:
        content = f.readlines()
    count = 1


    for line in content:
        line = line.strip()

        # path = filename.replace("chapters/","")
        path = os.path.basename(filename) .replace(".md", "")
        link = '[' + path + '](https://github.com/cloudmesh/book/edit/master/cloud-clusters/' + filename + ')'


        
        if "todo" in line:
            print ("|", count, "|", '<font size="xx-small">' , link, '</font>', "|", line, "|")            

        if "TODO" in line:
            line = line.replace("\TODO{","")
            line = line.replace("}","")
            line = line.replace("TODO:","")
            line = line.replace("TODO","")                        
            print ("|", count, "|", '<font size="xx-small">' , link, '</font>', "|", line, "|")
        count = count + 1

#print("# TODO")
print()

print("| Line | Path | Description    |")
print("| - | ---- | -------------- |")
for file in files:
    extract_todos(file)

print()

print("LL")
