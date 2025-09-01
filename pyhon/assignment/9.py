str=input("enter the value of the list by giving a space in between : ")

str=str.split(" ")

for i in range(0,len(str)):
    str[i]=int(str[i])

str.sort()
# print(str)

print(f"the second smallest value of this list is {str[1]}")

