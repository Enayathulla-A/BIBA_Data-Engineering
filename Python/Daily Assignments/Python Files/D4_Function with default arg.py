#Function with default arguments
def xyz(a,b=20):
    print("B value is: ", b)
    return a+b

print(xyz(10))
print(xyz(5,60))