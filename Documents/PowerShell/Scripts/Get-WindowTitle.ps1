function Get-WindowTitle {
    <#
    .SYNOPSIS
        Cmdlet which return the window naùe from a process
    .DESCRIPTION
        Cmdlet which return the window naùe from a process
    .EXAMPLE
        Get-WindowTitle
        Return all window name
    .EXAMPLE
        Get-WindowTitle -AppName *Terminal*
        Return all name windows from Terminal process
    .INPUTS
        AppName is q string
    .OUTPUTS
        Windows Name string
    .NOTES
        Script inspired by the original from
        https://devblogs.microsoft.com/powershell/get-windowtitle-ps1/
        and write by Jeffrey Snover [MSFT]
    #>
    [CmdletBinding()]
    param (
        $AppName
    )

    # Change Cmdlet args if have AppName set
    if ($AppName) {
        $AppProcess = Get-Process -Name $AppName
    } else {
        $AppProcess = Get-Process
    }

    # return just window name
    return ($AppProcess | Where-Object { $_.MainWindowTitle } ).MainWindowTitle
}