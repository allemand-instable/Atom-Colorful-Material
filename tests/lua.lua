-- Variable declaration
local name = "Lua"

-- Table declaration
local person = { name = "John Doe", age = 30 }

-- Function definition
local function greet(n)
    print("Hello, " .. n .. "!")
end

-- Control flow
if person.age > 20 then
    greet(person.name)
else
    print("Too young")
end

-- Looping through a table
for key, value in pairs(person) do
    print(key, value)
end

-- Error handling
local function riskyFunction()
    error("This is an error")
end

local status, err = pcall(riskyFunction)
if not status then
    print("Caught an error:", err)
end