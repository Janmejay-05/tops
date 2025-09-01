#with constructor

class demo:
    def __init__(this,name,age):
        this.name=name
        this.age=age

    def display(this):
        print(f"name is {this.name} and age is {this.age}")



s1=demo("ayush",20)

s1.display()

# without constructor

# class demo:
#     def demo(this,name,age):
#         this.name=name
#         this.age=age

#     def display(this):
#         print(f"name is {this.name} and age is {this.age}")


# s1=demo()
# s1.demo("janmejay",19)

# s1.display()