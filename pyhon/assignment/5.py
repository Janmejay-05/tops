str=input("enter the string : ")

if len(str)>=3:
    if str[-3:]=="ing":
        str=str[:-3]+"ly"
    else:
        str+="ing"
else:
    str=str

print(str)