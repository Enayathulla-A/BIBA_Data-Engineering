#child class derived from another child class
class A:
    def classA(self):
        print("Class A's Function")
class B(A):
    def classB(self):
        print("Class B's Function")
class C(B):
    def classC(self):
        print("Class C's Function")

ob=C()
ob.classA()
ob.classB()
ob.classC()