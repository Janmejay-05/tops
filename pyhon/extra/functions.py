# input() → Take user input
name = input("enter your name")

# print() → Display output
print(name)

# type() → Get the type of variable
print(type(name))

# len() → Get length of string
print(len(name))

# int() → Convert string to integer
print(int("10") + 5)

# float() → Convert string to float
print(float("3.5") * 2)

# str() → Convert number to string
print(str(123) + "abc")

# max() → Find largest number
print(max(4, 5, 6, 3))

# min() → Find smallest number
print(min(4, 9, 2))

# sum() → Add numbers in a list
print(sum([10, 20, 30]))

# round() → Round number to given decimals
print(round(3.456, 2))

# sorted() → Sort a list
print(sorted([3, 1, 4, 2]))

# range() → Generate sequence of numbers
for i in range(1, 6):
    print(i, end="")
    print()

# abs() → Get absolute value
print(abs(-30))

# help() → Show documentation of object
# help(str)

# dir() → Show available methods of an object
print(dir([]))

# id() → Memory address of object
x = 10
print(id(x))

# pow() → Exponent (power)
print(pow(2, 3))

# any() → True if any element is True
print(any([0, False, 5]))

# all() → True if all elements are True
print(all([1, True, 3]))

# isinstance() → Check type of variable
print(isinstance(10, int))

# enumerate() → Get index + value while looping
for i, val in enumerate(["a", "b", "c"]):
    print(i, val)
