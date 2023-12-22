'''Pandas:
In python pandas are build in pre defined module.
It is open sourse anyone can easily use this module into their code.
Pandas module used for data handling and analyzing into the large scale'''
'''Numpy:
In python Numpy(Numbers in python) is pre defined module that helpful for array handling.
Multi dimentional arrays are easily handled by Numpy module.
It reduce our code time. we can easily reuse that build in functions.'''
#I am importing Pandas
import pandas as pd #i renamed pandas as pd
#I read one local csv file using pandas
a=pd.read_csv("C:\\Users\\User\\Desktop\\Salary_Data.csv")
print("Successfully read csv file from local")
print(a)
#know how many columns present in that csv file using pandas
print("Columns: ",a.columns)
#print only needed column using pandas
print(a.Salary) #salary column only printed

#i am importing Numpy 
import numpy as np #i renamed numpy as np
#I create sample arrays and perform various operation using numpy
a=np.array([[1,2,3],[4,5,6]])
b=np.array([[11,12,13],[14,15,16]])
print("Array element type",a.dtype)
print("Array add",a+b) #i added two arrays
print("A Transpose",a.T) #I transposed first array
print("Array shape",b.shape) #it print shape of array in (M,N) format
c=b.reshape(2,3,1) #i reshaped 2nd array
print("Reshaped Array",c)
d=a.flatten() #I flatted first array
print("Flatted Array", d)
print("Sum of array",a.sum()) # I printed sum of the array
print("Maximum value in Array",a.max()) #It returns max element from the array
print("Minimum value in Array",a.min()) #It returns min element from the array