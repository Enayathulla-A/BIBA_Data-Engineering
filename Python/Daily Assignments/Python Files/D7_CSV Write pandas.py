import pandas as p
head=['Name','Sub','Mark']
values=[['Enayath','Maths',100],['Karthi','Science',90],['Abi','English',85]]
d=p.DataFrame(values,columns=head)
d.to_csv("C:\\Users\\User\\Desktop\\Test.csv",index=False)
print("File write successfully using pandas")