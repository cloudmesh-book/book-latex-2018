import requests
import json
from pprint import pprint

headers = {'Content-type': 'application/json'}
r = requests.get('https://github.com/cloudmesh/book/issues')

pprint (r.json())


#if(r.ok):
#    output = json.loads(r.text or r.content)
#    pprint (output)
