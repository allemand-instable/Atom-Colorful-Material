// Importing standard library
use std::collections::HashMap;

// Struct definition
pub struct Person {
    name: String,
    age: u8,
}

// Enum definition
pub enum Error {
    NotFound,
    Invalid,
}

// Function definition
pub fn greet(person: &Person) {
    println!("Hello, {}!", person.name);
}

// Implementation block for the Person struct
impl Person {
    pub fn new(name: String, age: u8) -> Self {
        Self { name, age }
    }

    pub fn say_age(&self) -> Result<(), Error> {
        if self.age > 0 {
            println!("I am {} years old.", self.age);
            Ok(())
        } else {
            Err(Error::Invalid)
        }
    }
}

// Main function
fn main() {
    // Variable declaration
    let mut people = HashMap::new();

    // Control flow
    for i in 1..5 {
        let person = Person::new(format!("Person {}", i), i);
        people.insert(i, person);
    }

    // Error handling
    if let Some(person) = people.get(&3) {
        match person.say_age() {
            Ok(_) => (),
            Err(e) => match e {
                Error::NotFound => println!("Person not found."),
                Error::Invalid => println!("Invalid age."),
            },
        }
    }
}