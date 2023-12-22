#child class have one parent class
class parent:
    def __init__(self,id,name):
        self.id=id
        self.name=name
    def display(self):
        print("Id: {}".format(self.id))
        print("Name: {}".format(self.name))
        
class child(parent):
    def __init__(self,id,name,city,pincode):
        self.city=city
        self.pincode=pincode
        parent.__init__(self,id,name)
    def details(self):
        print("My id is: {}".format(self.id))
        print("My name is: {}".format(self.name))
        print("My city is: {}".format(self.city))
        print("My pincode is: {}".format(self.pincode))
        
a=child(101,"Enayath","Namakkal",637001) #user gives value on compile time
a.display()
a.details()
b_id=int(input("Enter id: ")) #user gives value on run time
b_name=input("Enter name: ")
b_city=input("City: ")
b_pincode=input("Pincode: ")
b=child(b_id,b_name,b_city,b_pincode)
b.display()
b.details()