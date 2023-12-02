Import-Module Pode, Pode.Web, Microsoft.PowerShell.SecretManagement, Microsoft.PowerShell.SecretStore

Start-PodeServer {

    Add-PodeEndpoint -Address localhost -Port 8080 -Protocol Http -Force

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels @("Error", "Warning")

    Use-PodeWebTemplates -Title "EC2 Activity" -Theme Dark

    Add-PodeWebPage -Name "EC2 State Activity" -scriptblock {

        New-PodeWebCard -Content @(
            New-PodeWebForm -Name 'Example' -ScriptBlock {

                $date = $WebEvent.Data['Example_Date']
                $WebEvent.Data | Out-Default
            } -Content @(

                New-PodeWebDateTime -Name 'Example' -Type Date
            )
        )

    }

}