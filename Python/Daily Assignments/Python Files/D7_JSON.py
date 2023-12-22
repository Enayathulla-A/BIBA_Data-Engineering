#Java Script Object Notation
#Python convert JSON file into dictionary format
import json
jsonfile='{"Name":"Enayath","City":"Namakkal","Pincode":637001}'
pyfile=json.loads(jsonfile) #loads used for load data from json file to python file
print(pyfile)
print(pyfile["Name"])