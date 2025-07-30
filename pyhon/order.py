#Order code

total = int(input("kitne ka liyaaaaa?"))
is_first_order = input("is this your first order")

print(is_first_order,type(is_first_order))

if total>=1000:
    if is_first_order==True:
        print("you got 300 rupeess, aishh kar ja")
    elif is_first_order==False:
        print("dusri bar order kiya koy nay 300 nay 100 ka de dunga, kyo ki 1000 se jyada hain naa")
else:
    print("1000 se jyada kar na kanjoosssss")