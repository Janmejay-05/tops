# str=input("enter tupple values and provide comma before giving new tuple value : ")
# print(str)

# l1=str.split(",")

# print(l1)

# for i in range(len(l1)):
#     l1[i]=tuple(l1[i])

# print(l1)


l1=[(1,"a"),(2,"b"),(3,"c")]

l1=list(zip(*l1))
print(l1)
      

