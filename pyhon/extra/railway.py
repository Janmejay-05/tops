train = ("ahmedabad-rajkot","ahmedabad-bhavnagar","ahmedabad-morbi")
seat=10
perSeat=200
bal=10000
password=12345

print("there are only three trains available ahmedabad-rajkot, ahmedabad-bhavnagar and ahmedabad-morbi")
destination=input("enter your destination in a correct form and spelling")

if(destination in train):
    print("yes")
    enter_seats=int(input("enter your seat number"))
    if(enter_seats<=10 and enter_seats>=1):
        print("there are enough seats available")
        total_amount=enter_seats*perSeat
        enter_password=int(input(f"your upi is link with our account enter your password for payment of {total_amount}"))
        if(enter_password==password):
            if(bal>=total_amount):
                print(f"your {enter_seats} seat is booked in train {destination}")
            else:
                print("you have not enough balance in your account")
        else:
            print("your password is wrong")
    else:
        print("there are no enough seats are available in this train.")
        enter_condition=input(" Do you want to book 10 tickits because that is possible. type Y for yes and N for no")
        if(enter_condition=="Y"):
            enter_password_again=int(input(f"your upi is link with our account enter your password for payment of {perSeat*seat}"))
            if(enter_password_again==password):
                if(bal>=perSeat*seat):
                    print(f"your {10} seat is booked in train {destination}")
                else:
                    print("your have not enough balance")
            else:
                print("your password is incorrect")
        else:
            print("okay , your loss !")
else:
    print("no") 
