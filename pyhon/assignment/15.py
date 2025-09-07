
num=int(input("enter the number length of fibonacci"))
a=0
b=1

print(a , end=" ")
print(b,end=" ")


for i in range(3,num+1):
    c=a+b
    print(c,end=" ")
    a=b
    b=c

