# Python program to demonstrate dictionary methods:
# items(), keys(), update(), and get()

# Creating a dictionary
student = {
    "name": "Rahul",
    "age": 21,
    "course": "Computer Science"
}

# 1. items() -> returns all key-value pairs as tuples inside a dict_items object
print("Dictionary items (key-value pairs):")
print(student.items())   # Example output: dict_items([('name', 'Rahul'), ('age', 21), ('course', 'Computer Science')])
print()

# 2. keys() -> returns all the keys of the dictionary
print("Dictionary keys:")
print(student.keys())    # Example output: dict_keys(['name', 'age', 'course'])
print()

# 3. get(key) -> safely retrieves the value of a given key
print("Get the value of 'course':")
print(student.get("course"))   # Output: Computer Science

# If the key does not exist, it returns None (or a default value if provided)
print("Get the value of 'grade' (non-existent key):")
print(student.get("grade", "Not Assigned"))   # Output: Not Assigned
print()

# 4. update() -> updates the dictionary with new key-value pairs
print("Updating dictionary with new values:")
student.update({"age": 22, "grade": "A"})
print(student)  # Now age is updated to 22 and grade is added
