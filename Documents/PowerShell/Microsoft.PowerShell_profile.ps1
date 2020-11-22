#
# My Posh Profile - Didier Bröska
#

## Theming
Set-Theme Avit

## Keybindings
Set-PSReadLineKeyHandler -Key Ctrl+d -Function DeleteCharOrExit
Set-PSReadLineKeyHandler -Key Ctrl+l -Function ClearScreen

## Env vars
$env:PSScripts    = "${PSScriptRoot}\Scripts"
$env:PSBin        = "${PSScriptRoot}\Bin"
## Helpers functions
. "$env:PSScripts\Helpers.ps1"
. "$env:PSScripts\Get-WindowTitle.ps1"

## dotfiles
. "$env:PSBin\dotfiles.ps1"

## DotNet completion
# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($commandName, $wordToComplete, $cursorPosition)
        dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
           [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}

## Aliases bash compatible
Set-Alias touch New-Item