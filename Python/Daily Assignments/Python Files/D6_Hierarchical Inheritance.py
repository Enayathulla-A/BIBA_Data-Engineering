#parent class have 2 or more child class
class parent:
    def main(self):
        print("This is parent class")
class child1(parent):
    def derived(self):
        print("This is child-1 class")
class child2(parent):
    def derived(self):
        print("This is child-2 class")
        
c1=child1()
c2=child2()
c1.main()
c1.derived()
c2.main()
c2.derived()