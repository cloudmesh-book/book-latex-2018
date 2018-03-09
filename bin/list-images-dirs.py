#!/usr/bin/env python

from pathlib import Path
import subprocess
import os

files = Path('.').glob('**/images/')


print("\\graphicspath{%")
print("{.}%")

for f in files:
    d = str(f)
    if d == "images":
        print("{images/}%")
    else:
        d = d.replace("/images","/")
        print ("{",d,"}%", sep="")

print ("}")

