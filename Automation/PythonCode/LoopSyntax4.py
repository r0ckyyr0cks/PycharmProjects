# Create a list with some data

lst1 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 'Testing', 'World', 'www.tesTingWorld.com']

for i in lst1:
    print(i)
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

for i in 'Testing':
    print(i)
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

lst = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
z = 0
for i in lst:
    z = z+i
    print(z)
print("The sum of all the numbers is = " + str(z))
