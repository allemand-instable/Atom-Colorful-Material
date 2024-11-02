# Variable declaration
$name = "PowerShell"

# Function definition
function Greet($n) {
    Write-Host "Hello, $n!"
}

# Control flow
if ($name -eq "PowerShell") {
    Greet($name)
} else {
    Write-Host "Unknown name"
}

# Looping
for ($i=0; $i -lt 5; $i++) {
    Write-Host $i
}

# Error handling
try {
    # This will cause an error
    Get-Content -Path "non_existent_file.txt"
} catch {
    Write-Host "Caught an error: $_"
}

# Using a cmdlet
Get-Process | Where-Object { $_.CPU -gt 10 }