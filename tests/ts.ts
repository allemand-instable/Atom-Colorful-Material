// Importing modules
import { format } from 'date-fns';

// Interface definition
interface Person {
    name: string;
    age: number;
}

// Class definition
class Employee implements Person {
    constructor(public name: string, public age: number, public hireDate: Date) { }

    // Method
    getHireDate() {
        return format(this.hireDate, 'yyyy-MM-dd');
    }
}

// Generic function
function getProp<T, K extends keyof T>(obj: T, prop: K): T[K] {
    return obj[prop];
}

// Decorator
function log(target: Object, propertyKey: string, descriptor: TypedPropertyDescriptor<any>) {
    let originalMethod = descriptor.value;
    descriptor.value = function (...args: any[]) {
        console.log(`Called ${propertyKey} with args:`, args);
        return originalMethod.apply(this, args);
    };
}

// Using the decorator
class Logger {
    @log
    logMessage(message: string) {
        console.log(message);
    }
}

// Main function
function main() {
    const employee = new Employee('John Doe', 30, new Date());
    console.log(getProp(employee, 'name'));
    const logger = new Logger();
    logger.logMessage('Hello, TypeScript!');
}

main();