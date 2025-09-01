list=[1,2,3,4,5,6]
sub1=[1,2,3,4]
sub2=[1,2,5]

def checkSublist(list,sub1):
    check=[]

    length=len(list)
    sublen=len(sub1)


    for i in range(0,length):
        if sub2[0]==list[i]:
            check=list[i:i+sublen]

    bool=True


    if(len(sub1)==len(check)):
        for i in range(0,len(check)):
            if sub1[i]!=check[i]:
                bool=False
            else:
                bool=True


    if bool:
        print("this list contains sublist")
    else:
        print("this list does not contain sublist")


checkSublist(list,sub2)
