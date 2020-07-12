# Lets see condition handling

i = 1000

if i > 10:
    print("The Number is Greater")
else:
    print("The value is lower")

# in case word is used
age = input("Please enter your age = ")

if int(age) < 18:
    print("You are a teenager")
else:
    print("You are an adult")

# in case OR operator
num = input("Please enter a number => ")
num = int(num)
if num < 1 or num > 100:
    print("You entered an invalid number, please enter between 1 to 100 only")
else:
    print("This is a valid number")
