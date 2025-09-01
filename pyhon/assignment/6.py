str=input("enter the string : ")

li=str.split(" ")
bool=False

for i,val in enumerate(li):
    if val.lower()=="not":
        fi=i
    
    if val.lower()=="poor" and i==fi+1:
        bool=True


print(bool)

if bool:
   str= str.replace("not poor","good")

print(str)