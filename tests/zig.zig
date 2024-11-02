const std = @import("std");

// Struct definition
pub const Person = struct {
    name: []const u8,
    age: u8,
};

// Function definition
pub fn greet(person: Person) void {
    std.debug.print("Hello, {}!\n", .{person.name});
}

// Main function
pub fn main() !void {
    // Variable declaration
    var people: [5]Person = undefined;

    // Control flow
    var i: u8 = 0;
    while (i < 5) : (i += 1) {
        people[i] = Person{ .name = "Person", .age = i };
    }

    // Error handling
    if (people[3].age > 0) {
        greet(people[3]);
    } else {
        return error.InvalidAge;
    }
}