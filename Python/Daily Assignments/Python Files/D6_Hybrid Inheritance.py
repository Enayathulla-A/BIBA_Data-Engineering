#combination of 2 or more inheritance called Hybrid inheritance
class A:
    def classA(self):
        print("class A")
class B(A):
    def classB(self):
        print("Class B")
class C(B):
    def classC(self):
        print("class C")
class D(B):
    def classD(self):
        print("Class D")
#Class A,B,C consider as multileval inheritance
#Class B,C,D consider as Hierarchical inheritance 
#combination of both inheritance called Hybrid inheritance
ob_C=C()
ob_D=D()
ob_C.classA()
ob_C.classB()
ob_D.classB()
ob_D.classA()