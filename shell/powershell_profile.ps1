$env:STARSHIP_CONFIG = Join-Path $PSScriptRoot "shared/starship.toml"
Invoke-Expression (&starship init powershell)

$env:PATH += Join-Path $PSScriptRoot "shared/nt/target/release/" 

if ((Get-Content $PROFILE) -notcontains $MyInvocation.MyCommand.Definition) {
    Add-Content $PROFILE $MyInvocation.MyCommand.Definition
    Write-Output ("Added " + $MyInvocation.MyCommand.Definition + " to global powershell profile")
}
