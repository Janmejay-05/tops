str=input("enter the value of the list by giving a space in between : ")
print("user input ")
print(str)


str=str.split(" ")

print("after split ")
print(str)


for i in range(0,len(str)):
    str[i]=int(str[i])

print("after convert into int ")


print(str)
#method 1

# uni=[]
# for num in str:
#     if num not in uni:
#         uni.append(num)

# print("after removing duplicates")

# print(uni)

#method 2

uni=list(set(str))
print("after removing duplicates")

print(uni)