num=1234
rev=0
rem=0

while(num>0):
    rem=num%10
    rev=rev*10+rem
    num//=10

print(f"reverse of this num is {rev}")