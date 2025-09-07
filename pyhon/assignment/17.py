# odd series= 1*1/1! + .... till n
# even series= 2*2/2! + .... till n


def factorial(n):
    f=1
    for i in range(1,n+1):
        f=f*i
    
    return f

print(factorial(3))


def odd_series(num):
    sum=0
    for i in range(1,num+1,2):
        sum+=i*1/factorial(i)

    return sum


def even_series(num):
    sum=0
    for i in range(2,num+1,2):
        sum+=i*1/factorial(i)

    return sum

num1=int(input("enter number till where you want the odd series : "))
num2=int(input("enter the numebr till where you want the even series : "))

print(f"the sum of odd series till {num1} is {odd_series(num1)}")
print(f"the sum of odd series till {num2} is {even_series(num2)}")


