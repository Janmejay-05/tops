# Tuple creation
tup = (1, 2, 3, 4, 2, 5)

# count(x) → Returns the number of times x appears in the tuple
print(tup.count(2))   # 2

# index(x) → Returns the index of first occurrence of x
print(tup.index(3))   # 2


# Using built-in functions with tuples:

# len() → Returns the length of tuple
print(len(tup))   # 6

# max() → Returns the maximum value
print(max(tup))   # 5

# min() → Returns the minimum value
print(min(tup))   # 1

# sum() → Returns the sum of tuple elements
print(sum(tup))   # 17

# sorted() → Returns a new sorted list (not tuple!)
print(sorted(tup))   # [1, 2, 2, 3, 4, 5]

# tuple() → Convert other data types into tuple
lst = [10, 20, 30]
print(tuple(lst))   # (10, 20, 30)

# in operator → Check if element exists in tuple
print(2 in tup)   # True

# iteration → Loop through tuple elements
for item in tup:
    print(item, end=" ")   # 1 2 3 4 2 5
