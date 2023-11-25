Install-Module -Name Microsoft.PowerShell.SecretManagement  -Scope AllUsers -Force
Install-Module -Name Microsoft.PowerShell.SecretStore  -Scope AllUsers -Force

Import-Module Pode, Pode.Web

Start-PodeServer {

    Add-PodeEndpoint -Address localhost -Port 8080 -Protocol Http -Force

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels @("Error", "Warning")

    Use-PodeWebTemplates -Title "EC2 Activity" -Theme Dark

    Add-PodeWebPage -Name "EC2 State Activity" -scriptblock {

    }

}