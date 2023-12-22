# r used for read only; r+ used for read and write
file=open("C:\\Users\\User\\Desktop\\new.txt","r")
#read method 1
for i in file:
    print(i)

#read method 2
print(file.read())
file.close()