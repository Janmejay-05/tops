# Python program to demonstrate Set methods:
# add(), remove(), pop(), intersection(), and union()

# Creating two sets
set_a = {1, 2, 3, 4}
set_b = {3, 4, 5, 6}

# 1. add() -> adds a new element to the set
print("Original Set A:", set_a)
set_a.add(10)   # Adding element 10
print("After add(10):", set_a)
print()

# 2. remove() -> removes the specified element from the set
print("Before remove:", set_a)
set_a.remove(2)   # Removing element 2
print("After remove(2):", set_a)
print()

# 3. pop() -> removes and returns a random element from the set
# Note: Since sets are unordered, pop() removes any element randomly
print("Before pop:", set_a)
removed_element = set_a.pop()
print("Popped element:", removed_element)
print("After pop:", set_a)
print()

# 4. intersection() -> returns the common elements of two sets
print("Intersection of Set A and Set B:")
print(set_a.intersection(set_b))   # Output: {3, 4}
print()

# 5. union() -> returns all unique elements from both sets
print("Union of Set A and Set B:")
print(set_a.union(set_b))   # Output: {1,3,4,5,6,10,...}
