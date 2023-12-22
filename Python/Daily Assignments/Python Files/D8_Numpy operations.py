import numpy as np
a=np.array([[1,2,3,4],[5,6,7,8]])
print(a+1) #every element add with 1
print(a-1) #every element sub with 1
print(a*2) #every element multiply with 2
print(a**2) #every element power with 2
print(a%2) #every element divisible by 2 and gives the remainder
print(a.T) #Print arrays transpose
print(a.max()) #find maximum element in whole array
print(a.max(axis=0)) #column wise maximum
print(a.max(axis=1)) #row wise Maximum
print(a.min()) #find min element in whole array
print(a.min(axis=0)) #column wise min
print(a.min(axis=1)) #row wise min
print(a.sum()) #print sum of whole array
print(a.cumsum(axis=1)) #row wise cumulative sum