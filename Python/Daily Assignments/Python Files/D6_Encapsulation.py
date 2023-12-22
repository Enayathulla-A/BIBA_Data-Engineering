class parent:
    def __init__(self):
        self.a="Public attribute"
        self.__b="private attribute"
        print("with in parent class {}".format(self.__b)) 
        #with in the class only we access;outside class we wont access
class child(parent):
    def __init__(self):
        parent.__init__(self)  #read the parent class init function
        print("Calling parent class private attribute from child class")
        print(self.__b) #private attributes gives error; It only access inside the class

p=parent()
print(p.a)

#c=child() 