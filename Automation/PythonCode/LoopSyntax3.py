# for loop printing a table

num = input("Enter a number = ")
num = int(num)
for i in range(1, 11):
    print(str(num) + " * " + str(i) + " = " + str(i*num))
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
# set increment value
for i in range(1, 10, 2):
    print(i)
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
# set decrement value
for i in range(10, 1, -2):
    print(i)
