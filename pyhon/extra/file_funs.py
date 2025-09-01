f1=open("f1.txt","r")

# it will store in a list all the lines 

# l1=f1.readlines()

# print(l1)



# reads single line if same code three times then it will read all the three lines 

line1=f1.readline()
print(line1)

line2=f1.readline()
print(line2)

line3=f1.readline()
print(line3)


# modes of opeaning the file 

# r – open for reading 
# w - open for writing  
# a - open for appending 
# +  - open for updating. 
# ‘rb’ will open for read in binary mode. 
# ‘rt’ will open for read in text mode.