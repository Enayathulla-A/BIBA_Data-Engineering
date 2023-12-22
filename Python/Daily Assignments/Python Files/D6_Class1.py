class secondclass:
    def __init__(self,name):
        self.name=name
    def display(self):
        print("Hello {}".format(self.name))

sc=secondclass("Enayath")
sc.display()