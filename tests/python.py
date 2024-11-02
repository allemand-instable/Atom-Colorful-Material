# Importing modules
import datetime

# Class definition
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    # Method
    def greet(self):
        print(f"Hello, {self.name}!")

# Function definition
def get_current_year():
    return datetime.datetime.now().year

# Error handling
try:
    # Variable declaration
    person = Person("John Doe", 30)
    person.greet()
    print(get_current_year())
except Exception as e:
    print(f"An error occurred: {e}")