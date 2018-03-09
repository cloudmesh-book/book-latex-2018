#!/usr/bin/env python

from pathlib import Path
import subprocess
import os

files = Path('.').glob('**/images/')

print("\\graphicspath{%")
for f in files:
    print ("{",f,"}%", sep="")

print ("}")

