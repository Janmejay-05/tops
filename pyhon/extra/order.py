#Order code

total = int(input("kitne ka liyaaaaa?"))
is_first_order = input("enter Y if yes , enter N is no")

print(is_first_order,type(is_first_order))

if total>=1000:
    if is_first_order=="Y":
        print("you got 300 rupeess, aishh kar ja")
    elif is_first_order=="N":
        print("dusri bar order kiya koy nay 300 nay 100 ka de dunga, kyo ki 1000 se jyada hain naa")
    else:
        print("wrong input")
else:
    print("1000 se jyada kar na kanjoosssss")