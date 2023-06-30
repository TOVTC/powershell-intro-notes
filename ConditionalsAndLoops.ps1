# --- If/Then/Else/Else If Statements ---

# Typing a dash will provide operator options (-eq is ==)
$PokemonCaught = "908"
If ($PokemonCaught -eq 908) {
        Write-Host "You're a Pokémon Master!"
    } Else {
        Write-Host "Go catch more Pokémon!"
    }

# (-ge is >=, -and is &&, -le is <=)
$PokemonNumber = 25
If ($PokemonNumber -ge 1 -and $PokemonNumber -le 151) {
    Write-Host "Your Pokémon is from Kanto!"
} Elseif ($PokemonNumber -ge 152 -and $PokemonNumber -le 251) {
    Write-Host "Your Pokémon is from Johto!"    
} Elseif ($PokemonNumber -ge 252 -and $PokemonNumber -le 386) {
    Write-Host "Your Pokémon is from Hoenn!"    
}

# --- Switch Statements ---

$House = "Targaryen"
Switch($House) {
    "Targaryen"{ Write-Host "You're crazy!"; break; }
    "Lannister"{ Write-Host "You always pay your debts!"; break; }
    "Stark"{ Write-Host "Nothing bad is going to happen at the wall, right?"; break; }
}

# --- Loops ---

# For
$HaloPeeps = @("Master Chief", "Cortana", "Captain Keyes", "Flood")
For($counter = 0; $counter -le ($HaloPeeps.Length - 1); $counter++){
    Write-Host "Holy smokes, it's" $HaloPeeps[$counter]
}

# For Each
Foreach($peep in $HaloPeeps) {
    Write-Host $peep "has arrived!"
}

# While
$Xmen = @("Wolverine", "Cyclops", "Storm", "Professor x", "Gambit", "Dr. Jean Grey")
$counter = 0

# -ne is !=
while($counter -ne 6) {
    Write-Host $Xmen[$counter] "is a mutant"
    $Xmen[$counter].Length
    $counter++;
}

# Do While
$counter = 0
Do {
    Write-Host $Xmen[$counter] "is a mutant"
    $counter++;
} while ($counter -ne 6)