corrected_pin = 1234
balance=5000
option=int(input("if you want to deposit press 1 and if you want to withdraw press 2"))

if option==1:
    deposit=int(input("kitna paisa dalna hai tere ko??"))
elif option==2:
    withdraw=int(input("kitna upadna hai tere ko??"))
    if withdraw<=balance:
        pin=int(input("PIN dal do bhaiii"))
        if pin==corrected_pin:
            print("money withdraw successfully !")
            balance=balance-withdraw
        else:
            print("your pin is incorrect please enter your right pin")
    else:
        print("you do not have enough balance in you account")
else:
    print("invalid input")










# total = int(input("kitne ka liyaaaaa?"))
# is_first_order = bool(input("peli var k pachho aavyo??"))

# if total>=1000:
#     if is_first_order==True:
#         print("you got 300 rupeess, aishh kar ja")
#     else:
#         print("dusri bar order kiya koy nay 300 nay 100 ka de dunga, kyo ki 1000 se jyada hain naa")
# else:
#     print("1000 se jyada kar na kanjoosssss")