#!/usr/bin/env python

from pathlib import Path
import subprocess
import os

files = Path('.').glob('**/images/')


print("\\graphicspath{%")
print("{.}%")

for f in files:
    if str(f) is "images":
        print("{images/}%")
    else:
        d = str(f).replace("/images}","/}")
        print ("{",d,"}%", sep="")

print ("}")

