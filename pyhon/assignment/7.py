num1=int(input("enter your first number : "))
num2=int(input("enter yorr second number : "))


#method by module function 

# from math import gcd
# print(f"the greatest common diviser of {num1} and {num2} is {gcd(num1,num2)}")

#method by normal logic

l1=[]
l2=[]
for i in range(1,num1):
    if num1%i==0:
        l1.append(i)

for i in range(1,num2):
    if num2%i==0:
        l2.append(i)


common=[]


count=len(l1)-1

while(count>=0):
    for i,val in enumerate(l2):
        if val==l1[count]:
            common.append(val)
    count=count-1


print(l1)
print(l2)
print(common)
print(f"The greatest common divisor of {num1} and {num2} is {max(common)}")


# for i in range(len())