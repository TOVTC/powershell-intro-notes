# --- Exceptions ---

# Throw "It's a trap!"

# Write-Error -Message "It's a trap!" -ErrorAction Stop

# This function forcibly throws an error (without actually pinging SpaceX)
function Test-SpaceX {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [int32]$PingCount
    )

    # Test-Connection spacex.com -Count $PingCount
    Write-Error -Message "It's a trap!" -ErrorAction Stop
}

# --- Try/Catch ---

# In the catch block, the first Write-Output is basically a Write-Host that prints a custom message to the console
# The second Write-Output is part of the catch syntax and writes the output of the error action to the console
try { Test-SpaceX -ErrorAction Stop } catch { Write-Output "Launch problem!" Write-Output $_ }