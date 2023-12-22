import csv
with open('C:\\Users\\User\\Desktop\\Salary_Data.csv','r') as f:
    read=csv.DictReader(f)
    for i in read:
        print(i)