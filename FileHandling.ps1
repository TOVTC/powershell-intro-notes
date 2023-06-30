# Make sure the command line is in the root directory of the project

# --- Creating Files and Folders ---

# New-Item creates a new item into the namespace, generates an error if it already exists
New-Item -path .\ewok.txt -type "file" -value "praise C3PO"
New-Item -path .\ -name "deathstar" -type directory

# --- Copy A File ---

Copy-Item .\ewok.txt -destination .\deathstar

# --- Moving A File ---

Move-Item -path .\forcewithwho.txt -destination .\deathstar

ls
cd .\deathstar
ls

# --- Removing A File ---

Remove-Item .\ewok.txt
ls

# --- Check If A File Exists ---

# Returns a boolean
Test-Path .\forcewithwho.txt

# --- Rename A File ---

Rename-Item -path .\forcewithwho.txt -newname forcewithme.txt
ls