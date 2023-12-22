#Function with demonstrate keyword arguments
#it does not matter how the arguments are arranged, based on keyword name it will be assign properly
def hello(f_name,l_name):
    print(f_name,l_name)

hello(f_name="Enaya",l_name="thulla")
hello(l_name="thulla",f_name="Enaya")