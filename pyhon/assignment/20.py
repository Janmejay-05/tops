import random

password=input("enter your password")
ran_letter=random.choice(password)
cap_letter=ran_letter.upper()
print("capital",cap_letter)

password=password.replace(ran_letter,cap_letter)

print(password)

# print(password)