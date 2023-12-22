import csv
row=[]
file=open("C:\\Users\\User\\Desktop\\Salary_Data.csv","r")
csvread=csv.reader(file)
header=next(csvread)
for i in csvread:
    row.append(i)
print(header)
print(row)
file.close()