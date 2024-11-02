#include <iostream>
#include <vector>
#include <exception>

// Class definition
class MyClass {
public:
    int myPublicInt = 0;

private:
    int myPrivateInt = 0;
};

// Function definition
void myFunction() {
    std::cout << "Hello, World!" << std::endl;
}

// Template function
template <typename T>
T add(T a, T b) {
    return a + b;
}

// Exception handling
void mightGoWrong() {
    bool error = false;
    if (error) {
        throw std::exception();
    }
}

// Main function
int main() {
    MyClass myObject;
    myFunction();
    std::cout << add<int>(1, 2) << std::endl;

    try {
        mightGoWrong();
    } catch (std::exception &e) {
        std::cout << "Caught an exception: " << e.what() << std::endl;
    }

    return 0;
}