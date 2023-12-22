'''Python Module:
python modules are build in files that are already written by someone.
It is open sourse so anyone can import and use into their code.
Ex: Numpy, Pandas, Math, csv, json, etc'''

#Now i import already available module
import math
a=16
print("I am using pythons own build in module")
print("Sqrt value",math.sqrt(a))
print("Pi value: ",math.pi)

#Now i import my own module {Module name: Example_module}
#Example_module have 3 functions (add,sub,multi)
import Example_module as EM #here I renaming my python module as 'EM'
a=50
b=20
print("I am using my own module")
print("Add Function",EM.add(a,b))
print("Sub Function",EM.sub(a,b))
print("Multi Function",EM.multi(a,b))