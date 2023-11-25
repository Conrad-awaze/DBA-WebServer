git config --global user.email "conrad.gauntlett@awaze.com"
  git config --global user.name "Conrad Gauntlett"

  Install-Module Pode -Scope AllUsers -Force
  Install-Module Pode.Web -Scope AllUsers -Force

Import-Module Pode, Pode.Web

Start-PodeServer {

    Add-PodeEndpoint -Address localhost -Port 8080 -Protocol Http -Force

    New-PodeLoggingMethod -Terminal | Enable-PodeErrorLogging -Levels @("Error", "Warning")

    Use-PodeWebTemplates -Title "Passwords" -Theme Dark

    Add-PodeWebPage -Name "Test Page" -scriptblock {

    }

}

git config --global user.email "conrad.gauntlett@awaze.com"
  git config --global user.name "Conrad Gauntlett"

  Install-Module Pode -Scope AllUsers -Force
  Install-Module Pode.Web -Scope AllUsers -Force