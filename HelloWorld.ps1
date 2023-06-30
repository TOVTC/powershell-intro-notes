# --- Writing To & Reading From Command Line ---

# Write-Host prints to the console, automatically adding a new line
Write-Host "Hello World"
Write-Host "Hello again"

# You can add parameters to cmdlets, such as NoNewLine
Write-Host "Hello World" -NoNewLine
Write-Host "Hello again"

# Read-Host waits for user input
# The -Prompt flag displays a line of text to prompt the user to enter information
$FavSystem = Read-Host -Prompt "What is your favourite Nintendo gaming system?"
$FavSystem

# --- Piping ---

# Piping a command is a way of saying combining commands into a pipeline - think of it more as a chain
# For example: piping the result of Command-1 into Command-2
    # Command-1 | Command-2

# Adds the string to a new file (or replace an existing file) called "forcewithwho.txt"
"May the force be with you" | Out-File forcewithwho.txt

# cat command prints the first few lines of text in a file
cat .\forcewithwho.txt

# --- Variables ---

# Variables are invoked with the $
$FavCharacter = "Spongebob"

# Just typing the variable will print the variable back
$FavCharacter

$FavCharacter | Out-File favcharacter.txt
cat .\favcharacter.txt

# --- Data Types ---
# Strings, Integers, Floating Points (Decimals), Booleans

# Retrieves the datatype of the variable
$FavCharacter.GetType()

$FavCharacter = 5
$FavCharacter.GetType()

$FavCharacter = 5.5
$FavCharacter.GetType()

$FavCharacter = $true
$FavCharacter.GetType()

$x = 5
$y = 3
$x + $y
$x * $y

# Resetting variable value here
$FavCharacter = "Spongebob"

# Everything in PowerShell is an object
$FavCharacter.Length

# To retrieve all properties of an object (in this case because it's a string it only has length)
$FavCharacter | Select-Object -Property *

# To retrieve all methods that can be applied to the object
Get-Member -InputObject $FavCharacter

# --- Arrays ---

$Jedi = @("Obi Wan Kenobi", "Luke Skywalker", "Yoda", "Mace Windu" )
$Jedi
$Jedi.GetType()

# Access values on arrays using square bracket syntax
$Jedi[0]
$Jedi[1]
$Jedi[2]

# Access properties of variables
$Jedi[2].Length
$Jedi[1].Length

# Add values to arrays
$Jedi += "Qui-Gon Jin"
$Jedi
$Jedi[4]

# --- Hash Tables ---

$FellowshipBeta = @{key1 = "item1"; key2 = "item2"}
$FellowshipBeta

$Fellowship = @{"Wizard" = "Gandalf"; "Hobbit" = "Frodo"; "Elf" = "Legolas"}

# Add values to a hash table
$Fellowship.Add("Dwarf", "Gimli")

# Update an entry
$Fellowship.Set_Item("Dwarf", "Bilbo")
$Fellowship

# Access values using either dot or square bracket notation
$Fellowship."Dwarf"
$Fellowship["Dwarf"]

# Remove an entry
$Fellowship.Remove("Dwarf")
$Fellowship