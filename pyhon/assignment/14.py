dic={"ball":33,"bat":5,"stumps":10,"players":11}

temp=dic.items()
print(temp)

sortedlist=sorted(temp,key=lambda item:item[1])
arr=[]

for i in sortedlist:
    arr.append(i[1])

print("greatest three numbers in this dictonary are ",arr[-3:])
