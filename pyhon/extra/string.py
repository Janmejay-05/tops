text = "  Hello Python World  "

# upper() → Converts string to uppercase
print(text.upper())   # "  HELLO PYTHON WORLD  "

# lower() → Converts string to lowercase
print(text.lower())   # "  hello python world  "

# title() → Converts first character of each word to uppercase
print(text.title())   # "  Hello Python World  "

# capitalize() → Capitalizes the first character of the string
print(text.capitalize())   # "  hello python world  "

# strip() → Removes leading and trailing spaces
print(text.strip())   # "Hello Python World"

# lstrip() → Removes spaces from left side
print(text.lstrip())   # "Hello Python World  "

# rstrip() → Removes spaces from right side
print(text.rstrip())   # "  Hello Python World"

# replace(old, new) → Replaces substring
print(text.replace("Python", "Java"))   # "  Hello Java World  "

# split() → Splits string into list (default: spaces)
print(text.split())   # ['Hello', 'Python', 'World']

# join(iterable) → Joins elements with a separator
words = ["Python", "is", "fun"]
print(" ".join(words))   # "Python is fun"

# find(substring) → Returns index of first occurrence (-1 if not found)
print(text.find("Python"))   # 8

# index(substring) → Same as find(), but raises error if not found
print(text.index("World"))   # 15

# count(substring) → Returns number of occurrences of substring
print(text.count("o"))   # 3

# startswith(prefix) → Checks if string starts with given prefix
print(text.startswith("  He"))   # True

# endswith(suffix) → Checks if string ends with given suffix
print(text.endswith("World  "))   # True

# isalpha() → True if all characters are alphabets (no spaces/numbers)
print("Hello".isalpha())   # True

# isdigit() → True if all characters are digits
print("12345".isdigit())   # True

# isalnum() → True if all characters are alphabets or numbers
print("Hello123".isalnum())   # True

# swapcase() → Swaps uppercase to lowercase and vice versa
print("PyThOn".swapcase())   # "pYtHoN"

# format() → String formatting
age = 21
print("I am {} years old".format(age))   # "I am 21 years old"

# f-string (modern formatting) → Easier way of formatting
print(f"I am {age} years old")   # "I am 21 years old"
