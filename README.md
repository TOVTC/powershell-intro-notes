# PowerShell
```
$PSVersionTable.PSVersion
```
*   Checks version of PowerShell
*   PowerShell does pretty much what Command Prompt does
    *   The biggest difference is that there are specialized functions in PowerShell
*   Press tab to autocomplete text
```
Get-ExecutionPolicy
```
*   If you immediately run into errors, check the execution policy (should be RemoteSigned, but by default it's set to restricted)
*   RemoteSigned allows you to run custom commands and scripts
```
Set-ExecutionPolicy Restricted or RemoteSigned
```
*   Might require you to run PowerShell as administrator to set the ExecutionPolicy
*   PowerShell ISE - PowerShell Integrated Scripting Environment
    *   An editor that comes with Windows and allows you to build PowerShell scripts
*   .ps1 is the file type for PowerShell
*   cmdlets are pre-defined funcitons that perform a specific task (like Write-Host)
    *   They all follow a Verb-Noun format when named
    *   You can also add parameters using a dash (e.g. -NoNewLine)
*   You can return a full (very long) list of possible cmdlets by using a Get command
```
Get-Command -CommandTyper Cmdlet
```
*   Theses cmdlets belong to modules, which are collections of specialized cmdlets or functions that do specialized things
* You can also run a Get command to retrieve all (very long) help articles available
```
Get-Help *
```
*   Or you can run a Get command to retrieve help articles related to a specific cmdlet
*   The -Detailed flag can show additional information (but it might still only display part of the help file if it is not downloaded/available on your computer)
```
Get-Help Write-Host -Detailed
```
*   or
```
Get-Help Write-Host -Full
```
*   Everything in PowerShell is an object