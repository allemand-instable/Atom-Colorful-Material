-- Variable declaration
set name to "AppleScript"

-- Function definition
on greet(n)
    display dialog "Hello, " & n & "!"
end greet

-- Control flow
if name is equal to "AppleScript" then
    greet(name)
else
    display dialog "Unknown name"
end if

-- Repeat loop
repeat with i from 1 to 5
    display dialog "Number: " & i
end repeat

-- Error handling
try
    set x to 10 / 0
on error e
    display dialog "Caught an error: " & e
end try

-- Using a built-in command
tell application "Finder"
    display dialog "You are in " & (get the name of the home)
end tell