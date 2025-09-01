number = [1, 2, 3]

# append(x) → Adds element at the end of the list
number.append(5)

# insert(i, x) → Inserts element x at index i
number.insert(0, 0)

# extend(iterable) → Adds multiple elements (merges another list)
number.extend([6, 7])

# remove(x) → Removes the first occurrence of value x
number.remove(1)

# pop() → Removes and returns the last element (if no index given)
number.pop()

# pop(i) → Removes and returns element at index i
number.pop(4)

# clear() → Removes all elements from the list
number.clear()


fruits = ["apple", "banana", "cherry"]

# index(x) → Returns the index of first occurrence of value x
print(fruits.index("banana"))


nums = [1, 2, 2, 3, 2]

# count(x) → Returns number of occurrences of value x
print(nums.count(2))


num = [3, 1, 4, 2]

# sort() → Sorts the list in ascending order (in-place)
nums.sort()
print(nums)


numb = [3, 1, 4, 2]

# sorted(list) → Returns a new sorted list without changing the original
print(sorted(numb))
print(numb)


# reverse() → Reverses the list (in-place)
print(numb.reverse())   # returns None, because it modifies the list directly
print(numb)


a = [1, 2, 3]

# copy() → Returns a shallow copy of the list
b = a.copy()
print(b)
