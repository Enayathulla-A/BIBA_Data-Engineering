#We gonna write a JSON file using python
#python Dict values are written as json file
import json
d1={"Name":"Enayath","City":"Namakkal","Pincode":637001}
with open("C:\\Users\\User\\Desktop\\sample.json",'w') as jsonfile:
    json.dump(d1,jsonfile) #dump used for write json file
    jsonfile.close()
print("JSON file created successfully")