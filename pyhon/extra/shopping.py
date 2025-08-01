items=("bulb","table","shirt","pant","books","bags")
debit_details={
    "no":12345678,
    "cvv":987654,
    "otp":9090
}
online_pin=3030
qty_items={
    "bulb":5,
    "table":5,
    "shirt":4,
    "pant":2,
    "books":1,
    "bags":2
}
price={
    "bulb":50,
    "table":500,
    "shirt":400,
    "pant":200,
    "books":100,
    "bags":20
}
balance=10000

enter_item=input("enter item name")
# print(f"item = {enter_item} qty = {qty_items[enter_item]} price = {price[enter_item]}")
if(enter_item in items):
    enter_quantity=int(input(f"how many {enter_item} you want we have only {qty_items[enter_item]} available"))
    if(enter_quantity<= qty_items[enter_item] and enter_quantity>0):
        print(f"{enter_quantity} {enter_item}s are packed for your for Ruppees {price[enter_item]*enter_quantity} only")
        enter_pay_method=input("enter your likely pay method enter upi or debit only")
        if(enter_pay_method=="upi"):
            enter_pin=int(input(f"enter your pin to pay {price[enter_item]*qty_items[enter_item]}"))
            if(enter_pin==online_pin):
                print("payment successfull")
            else:
                print("wrong pin")
        elif(enter_pay_method=="debit"):
            enter_debitno=int(input("enter debit number"))
            enter_debitcvv=int(input("enter debit cvv"))
            enter_debitotp=int(input("enter debit otp given in message"))
            if(enter_debitno==debit_details["no"] and enter_debitcvv==debit_details["cvv"] and enter_debitotp==debit_details["otp"]):
                print("payment successfull")
            else:
                print("invalid credentials")
        else:
            print("payment method is invalid")
    else:
        print("Sorry! ,that much quantity is not in my store")
else:
    print("item is not in the store")