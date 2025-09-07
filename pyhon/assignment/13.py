dic={"ball":33,"bat":5,"stumps":10,"players":11}

temp=dic.items()
print(temp)

sortedlist=dict(sorted(temp,key=lambda item:item[1]))

print(sortedlist)