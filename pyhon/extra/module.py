import math 

# print(math.sqrt(512))
# print(math.pow(3,2))
# print(math.ceil(31.394))
# print(math.floor(31.399))
# print(math.factorial(5))
# print(math.gcd(5,4))
# print(math.sin(5.5))
# print(math.cos(5.5))
# print(math.tan(5.5))
# print(math.log(8,2))

import random

rand_float = random.random()
print("random.random():", rand_float)

rand_int = random.randint(1, 10)
print("random.randint(1,10):", rand_int)

fruits = ['apple', 'banana', 'cherry']
rand_choice = random.choice(fruits)
print("random.choice(fruits):", rand_choice)

rand_choices = random.choices(fruits, k=3)
print("random.choices(fruits, k=3):", rand_choices)

numbers = [1, 2, 3, 4, 5]
random.shuffle(numbers)
print("random.shuffle(numbers):", numbers)

sample_items = random.sample(fruits, k=2)
print("random.sample(fruits, k=2):", sample_items)

rand_uniform = random.uniform(1.5, 5.5)
print("random.uniform(1.5, 5.5):", rand_uniform)

random.seed(10)
print("random.random() after seed(10):", random.random())

rand_bits = random.getrandbits(4)
print("random.getrandbits(4):", rand_bits)

rand_expo = random.expovariate(0.5)
print("random.expovariate(0.5):", rand_expo)
