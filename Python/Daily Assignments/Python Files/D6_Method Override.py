'''Over ride have same function name,same/different attribute count, same return type.
It is run time polymorphism'''
class A:
    def hello(self):
        print("Hello from class A")
class B:
    #override
    def hello(self):
        print("Hello from class B")
        
b=B()
b.hello() #In runtime it desides which method will be executed based on object