
# https://learn.microsoft.com/en-us/power-platform/admin/powershell-create-service-principal


# Install Microsoft.PowerApps.Administration.PowerShell module if it does not exist.
if (-not(Get-Module -ListAvailable -Name Microsoft.PowerApps.Administration.PowerShell)) {
    Install-Module Microsoft.PowerApps.Administration.PowerShell -Scope CurrentUser
} 
Import-Module Microsoft.PowerApps.Administration.PowerShell

# Install Microsoft.PowerApps.Powershell module if it does not exist.
if (-not(Get-Module -ListAvailable -Name Microsoft.PowerApps.PowerShell)) {
    Install-Module -Name Microsoft.PowerApps.PowerShell -AllowClobber -Scope CurrentUser
} 

Import-Module Microsoft.PowerApps.PowerShell

Function Choose-Endpoint {

  $choice_out = "";
  $prompt = "Which Power Platform Cloud?"

  DO
  {

    $choice=Read-Host "$prompt
    1: Commercial
    2: US Gov
    3: US Gov High
    4: US DoD    
    Enter the appropriate number and press enter"
    Switch ($choice){
        1 {$choice_out="prod"; break}
        2 {$choice_out="usgov"; break}
        3 {$choice_out="usgovhigh"; break}
        4 {$choice_out="dod"; break}        
    }
     $prompt = "Invalid Choice. Which Power Platform Cloud?"
   } while ($choice_out -eq "")
   return $choice_out
}

Function Read-Guid {
   param (
        [string]$Prompt
   )

  $adjustedPrompt = "
$Prompt"

  DO{

    $readoutput = Read-Host $adjustedPrompt

    if ($readoutput -match "^(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}$")
    {
        return $readoutput
    }

    $adjustedPrompt =  "
Invalid Guid Value.  Please try again.
$Prompt"

   } while ($true)
}


# Get Endpoint
$endpoint=Choose-Endpoint

# Prompt the user for their tenant id
#$tenantId = Read-Guid "Please enter your tenant id"

# Login to Selected Power Platform Cloud
"Add-PowerAppsAccount -Endpoint $endpoint -TenantID $tenantId"
Add-PowerAppsAccount -Endpoint $endpoint -TenantID $tenantId

"
Checking for current Apps that can be used.

Get-PowerAppManagementApps -OutVariable mgmtApps
"
#Get-PowerAppManagementApps -OutVariable mgmtApps 
$mgmtApps = Get-PowerAppManagementApps
"Start-Sleep -Seconds 3"    
Start-Sleep -Seconds 3

$curApps = $mgmtApps.value

$appsFoundQty = $curApps.Length

"
Found $appsFoundQty Management App Registrations. 
"
if ( $appsFoundQty -gt 0)
{
    foreach ($appReg in $curApps){
      $appReg.ApplicationId
    }

  "
  "

    $continue = read-host "Press enter to register a new Management App.  Otherwise, press q and enter to quit."

    if ( $continue -ne "")
    {
      return
    }

}

# Prompt the user for their client app id
$appId = Read-Guid "Please enter the client app id"

"
New-PowerAppManagementApp -ApplicationId $appId
"
New-PowerAppManagementApp -ApplicationId $appId 



