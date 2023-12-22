class animal:
    def base(self):
        print("Hello Animal")
    def action(self):
        print("Animals did not have 7th sense")
class human(animal):
    def base(self):
        print("Hello Human")
    def action(self):
        print("Humans have 7th sense")
class lion(animal):
    def action(self):
        print("Lion did not have 7th sense")

a=animal()
h=human()
l=lion()
a.base()
a.action()
h.base()
h.action()
l.base()
l.action()