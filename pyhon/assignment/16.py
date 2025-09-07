l1=[1, 1, 1, 5, 5, 3, 1, 3, 3, 1,4, 4, 4, 2, 2, 2, 2]
obj={}

for i in l1:
    if i in obj:
        obj[i]=obj[i]+1
    else:
        obj[i]=1

dic2=dict(sorted(obj.items(),key=lambda item:item[0]))

print(dic2)