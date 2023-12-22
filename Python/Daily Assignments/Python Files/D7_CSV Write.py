import csv
head=['Name','Sub','Mark']
values=[['Enayath','Maths',100],['Karthi','Science',90],['Abi','English',85]]
filename="C:\\Users\\User\\Desktop\\Test.csv"
with open(filename,'w',newline="") as f:
    a=csv.writer(f)
    a.writerow(head)
    a.writerows(values)
    print("file created successfully")

r=[]
with open(filename,'r') as f:
    for i in f:
        r.append(i)
    print(r)