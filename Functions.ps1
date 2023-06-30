# --- Functions ---

# Basic Function
function Test-SpaceX-basic {
    ping spacex.com
}

# You can even call this function directly in the console
# Test-SpaceX-basic

# With Parameter Binding
function Test-SpaceX-intermediate {
    # The syntax for setting parameters and accepting arguments
    # Sets the number of pings
    param(
        $PingCount
    )
    # The ping command pings your desired endpoint
    # ping spacex.com

    # Test-Connection does the same as ping, but returns an object
    # You can also set the -Count parameter to the value of $PingCount
    # Effectively, passing in an argument to the Test-Connection function 
    Test-Connection spacex.com -Count $PingCount
}

# Here, pass 10 in as the argument value for the PingCount parameter
# Generates an error if no -PingCount value is specified
# Test-SpaceX-intermediate -PingCount 10

# With CmdletBindings
function Test-SpaceX-advanced {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [int32]$PingCount
    )

    Test-Connection spacex.com -Count $PingCount
}

# Prompts user for -PingCount value if none are specified (instead of generating an error)
# Test-SpaceX-advanced