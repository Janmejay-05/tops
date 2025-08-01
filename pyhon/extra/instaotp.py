userName = "janmejay"
password="12345"
otp="6060"
mobile="8401300367"
mobile_otp="9090"

enter_userName=input("enter your userName")
enter_password=input("enter your password")

print(enter_userName)

if enter_userName==userName:
    if enter_password==password:
        enter_otp=input("enter your otp with is messaged to you")
        if enter_otp==otp:
            print("login successfully")
        else:
            print("otp is wrong")
    else:
        enter_condition=input("do you want to change password becuase your password is incorrect, enter Y for yes and N for no")
        if enter_condition=="Y":
            enter_mobile=input("enter your registered mobile number")
            if enter_mobile==mobile:
                enter_otp=input("enter otp number which is given on your mobile")
                if enter_otp==mobile_otp:
                    changed_password=input("enter the changed password")
                    password=changed_password
                    print("your password is changed successfully")
                    enter_username_again=input("enter username again")
                    enter_new_passsword=input("enter your changed password")
                    if(enter_username_again==userName and enter_new_passsword==password):
                        print("login successfully")
                    else:
                        print("bhai tu ghare ja kai nathi tara pase")
                else:
                    print("otp is wrong")
            else:
                print("mobile no is wrong")
        else:
            print("bye bye dikra ! ")
else:
    print("username is wrong")
