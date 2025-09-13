bool=True
data={}

while(bool):
    print("                               WELCOME TO FRUIT MARKET ")
    print()
    print("                                   1) Manager ")
    print("                                   2) Customer ")
    who=input("Select your role : ")
    bool1=True
    if who=="1":
         while(bool1):
            print("                           FRUIT MARKET MANAGER ")
            print()
            print("                               1) ADD Fruit stock")
            print("                               2) View Fruit stock")
            print("                               3) Update Fruit stock")
            print("                               4) enter any number to exit after 4 or 4")
            event=input("Select your role : ")
            if event=="1":

                fruit_name=input("Enter the fruit name : ")
                fruit_qty=int(input("enter the quantity of that fruit : "))
                fruit_price=int(input("enter the price of the fruit : "))

                data[fruit_name]={"qty":fruit_qty,"price":fruit_price}

                conti=input("do you want to perform more operation if yes y and if no n")
                if conti=="n":
                    bool1=False
            elif event=="2":
                print(data)
            elif event=="3":
                print("This is your Data : ")
                print(data)

                f_name=input("enter the existing fruit name to update  ")
                if f_name in data:
                    qty=int(input(f"enter the quantity of {f_name}"))
                    price=int(input(f"enter the price of {f_name}"))

                    data[f_name]={"qty":qty,"price":price}
                else:
                    print("The fruit doesnot exist")
            else:
                print("iska banan baki hai rookja")
                bool=False
    elif who=="2":
        f_name=input("which fruit you wanna buy : ")
        if f_name in data:
            qty=int(input(f"how much {f_name} do you want : "))
            print(f"{data[f_name]["qty"]}")
            if data[f_name]["qty"]>=qty and qty>0:
                print(f"You have to pay {qty * data[f_name]["price"]} .. Thankyou Sir")
            else:
                print("I have not enough fruits")
        else:
            print("We do not have that fruit in my stock")
    else:
        print("Customer job is on working ")
        bool=False


