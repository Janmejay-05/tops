# str=input("enter tupple values and provide comma before giving new tuple value : ")
# print(str)

# l1=str.split(",")

# print(l1)

# for i in range(len(l1)):
#     l1[i]=tuple(l1[i])

# print(l1)








l1=[(1,"a","janmejay"),(2,"b","ayush"),(3,"c","hemang")]


len1=len(l1[0])
bool=True

for i in range(len(l1)):
    if len1!=len(l1[i]):
        bool=False

print(bool)

j=0
l2=[]
while j<len1:
    if bool:
        temp=[]
        for i in range(len(l1)):
            temp.append(l1[i][j])
        # print("temp ",temp)
        l2.append(temp)
        
        j=j+1

print("l2 ",l2)






# l1=list(zip(*l1))
# for i in range(0,len(l1)):
#     l1[i]=list(l1[i])
      

# for i in l1:
#     print(i)