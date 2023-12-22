import numpy as np
a=np.array([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
#array slicing
b=a[:2,::3] #indexex [0,0],[0,3],[1,0],[1,3]
print(b)
c=a[[0,1,2],[1,3,2]] #here we give the index values [0,1],[1,3],[2,2]
print(c)