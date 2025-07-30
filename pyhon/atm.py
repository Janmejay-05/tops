# ATM code
corrected_pin = 1234
balance=5000
option=int(input("if you want to deposit press 1 and if you want to withdraw press 2"))

if option==1:
    deposit=int(input("kitna paisa dalna hai tere ko??"))
    if deposit<=10000 and deposit>0:
        pin=int(input("PIN dal do bhaiii"))
        if pin==corrected_pin:
            print("money deposited successfully !")
            balance=balance+deposit
            print("your balance is ",balance)
        else:
            print("your pin is incorrect please enter your right pin")
    else:
        print("you are depositing above limits or below limits please deposite in limits")
elif option==2:
    withdraw=int(input("kitna upadna hai tere ko??"))
    if withdraw<=balance:
        pin=int(input("PIN dal do bhaiii"))
        if pin==corrected_pin:
            print("money withdraw successfully !")
            balance=balance-withdraw
            print("your balance is ",balance)
        else:
            print("your pin is incorrect please enter your right pin")
    else:
        print("you do not have enough balance in you account")
else:
    print("invalid input")






