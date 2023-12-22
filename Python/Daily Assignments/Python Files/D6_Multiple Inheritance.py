#child class have 2 or more parent class
class A:
    def classA(self):
        print("Class A's Function")
class B:
    def classB(self):
        print("Class B's Function")
class C(A,B):
    def classC(self):
        print("Class C's Function")

ob=C()
ob.classA()
ob.classB()
ob.classC()