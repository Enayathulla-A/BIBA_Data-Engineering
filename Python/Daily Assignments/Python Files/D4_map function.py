#Functions 
def add(a):
    return a+a
def sub(a):
    return a-1

#Map Function 
l1=(1,2,3,4)
l2=map(add,l1) #map(function,iteration)
l3=list(map(sub,l1))
print(list(l2))
print(list(l3))