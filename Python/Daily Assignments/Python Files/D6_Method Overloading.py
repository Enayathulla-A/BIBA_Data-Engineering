#Unable to use over loading in python
'''Over loading have same method name, different attributes, same return type.
It is compile time polymorphism'''
class A:
    def add(self,a,b,c):
        self.a=a
        self.b=b
        self.c=c
        print(self.a+self.b+self.c)
    def add(self,a,b):
        self.a=a
        self.b=b
        print(self.a+self.b)

a=A()
a.add(2,3)
a.add(5,6,7)
#The last method over write previous method; so we unable to use overloading in python.