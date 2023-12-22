#In python function arguments are passed in call by object. So sometimes logic is difficult to understand
#call by value not reflect on main function
def add(x):
    x=x+2
    print(id(x))
    print("inside the function: ",x)

a=10
print(id(a))
add(a)
print("outside the function: ",a)


#Example 2
def assign(l):
    l=[5,4,3,2,1]  #This list is copy of main list(the object id is differ)
    print(id(l))
    print("inside the function: ",l)

l=[1,2,3,4,5]
print(id(l))
assign(l)
print("outside the function: ",l)