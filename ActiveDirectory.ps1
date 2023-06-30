# Don't run this file

# --- Active Directory ---

# Import-Module Imports cmdlets from specific modules
Import-Module ActiveDirectory

# Retrieves information about specific users
Get-ADUser fbaggins

# Once you have a user, you can start using it as an object with properties
$user = Get-ADUser fbaggins

$user.GivenName | Out-File users.txt
cat users.txt

Set-AdUser -Identity fbaggins -Surname Tyler
Get-AdUser fbaggins

# Specify the group first, then specify the user
Add-ADGroupMember -Identity GroupName -Members fbaggins
Remove-ADGroupMember -Identity GroupName -Members fbaggins

# On SetADUser, turn on Advanced Feature to see a list of attributes that can be set  (which is how you know what parameters to set to create a new user)
# AccountPassword sets a default password, but it requires an argument of a Secure String, which can be generated using the cmdlet
# Here, we change the resulting string to plaintext, but that's not standard practice or extremely secure, so we use the -force flag to avoid errors
New-ADUser -Name "Luke Skywalker" -GivenName "Luke" -Surname "Skywalker" -SamAccountName "lskywalker" -UserPrincipalName "lskywalker@maeds.org" -Path "OU=Administration,OU=Staff,OU=MAEDS,DC=maeds,DC=org" -AccountPassword(ConvertTo-SecureString "UncleOwen!" -AsPlainText -Force) -Enabled $true

Set-ADAccountPassword -Identity lskywalker -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "OldBen123" -Force)