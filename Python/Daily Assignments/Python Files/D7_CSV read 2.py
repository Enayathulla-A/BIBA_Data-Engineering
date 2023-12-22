with open("C:\\Users\\User\\Desktop\\Salary_Data.csv","r") as f:
    content=f.readlines()
    head=content[:1]
    body=content[1:]
print(head)
print(body)