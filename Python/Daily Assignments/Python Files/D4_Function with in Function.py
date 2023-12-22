#Function with in another function
def sample1():
    a="hello"
    def sample2():
        b="Man"
        print(a,b)
    sample2()

sample1()