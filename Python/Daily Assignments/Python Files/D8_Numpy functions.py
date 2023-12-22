import numpy as np
#creating array with start stop step value
a=np.arange(0,20,3)
print("Array A")
print(a)
#creating array with some values between given range
b=np.linspace(0,10,3) #(start,stop,how many values need)
print("Array B")
print(b)
#reshape the 3X4 array
c=np.array([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
d=c.reshape(3,2,2) #(divided part, new array M, new array N)
print("Array C")
print(c)
print("Reshapped array")
print(d)
#flat the array
e=c.flatten()
print("Flat array of C")
print(e)