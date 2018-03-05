import glob
from pprint import pprint
import os
from pathlib import *

d = set()
for path, subdirs, files in os.walk('.'):
    for name in files:
        entry = os.path.join(path, name)
        if entry.startswith("./."):
            pass
        elif entry == '.':
            pass
        elif entry == './':
            pass
        elif entry.startswith("./deprecated"):
            pass
        elif entry.startswith("./dest"):
            pass
        elif entry.startswith("./bin"):
            pass
        else:
            filename = os.path.join(path, name)
            d.add(os.path.dirname(filename))

d.remove('.')
d = sorted(d)

print (d)

for entry in d:
    entry = entry.replace("./","./dest/")
    print (entry)
    os.makedirs(entry)
    
