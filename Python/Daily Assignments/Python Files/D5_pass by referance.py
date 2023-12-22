#In python functions arguments are passed in pass by object only
#pass by referance
def assign(l):
    l[0]=5 #Here we modify the main list values (object id is same), so its affect main list
    print(id(l))
    print("inside the function: ",l)

l=[1,2,3,4,5]
print(id(l))
print("Initial list: ",l)
assign(l)
print("outside the function: ",l)