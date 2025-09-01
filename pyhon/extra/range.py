# a = "vaidehi"
# print(len(a))
# count=0

# for i in range(len(a)):
#     if a[i]=="i":
#         count=count+1
#         if count==2:
#             print(f"this i is second i at index {i} in the name of {a}")
#             continue
#     print(i,a[i])


#functions

a=[45,80,30,55]

def avg(a):
    return sum(a)/len(a)
print(avg([30,40,50]))


#lamda function

square=lambda a: a*a
addition= lambda a,b:a+b

print(f"square is {square(5)}")
print(f"addition of number is {addition(5,10)}")