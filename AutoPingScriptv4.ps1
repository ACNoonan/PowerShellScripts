<#
.NOTES
    Version: 4.1 
    Author: Adam Noonan
    Last Edit: 8/28/2019
.SYNOPSIS
   Ping IP Address List
.DESCRIPTION
   Takes a list of IP Addresses in .csv file format and sends an ICMP echo to echo, adding output (IP Address, Status & DateTime)
   to a text file
.EXAMPLE
   Automated via Task Scheduler
.INPUT
   $inputFile = .csv file of IP Addresses to ping
.OUTPUT
   $outFile = .txt document of IP Address, Status & DateTime of script operation


------------------------------------------------------------[Change Log]----------------------------------------------------------
    4.1
    -Fit script to template
    --TODO: Set CmdletBinding, Params
    --TODO: Enforce Try/Catch, Logging
    --TODO: Test script
#>

    

#---------------------------------------------------------[Initializations]--------------------------------------------------------
#Set Error Action to Silently Continue
#$ErrorActionPreference = "SilentlyContinue"

#Dot Source required Function Libraries
#. "C:\Users\adamnoonan\Documents\Documents\Scripts\WriteLog.ps1"


#----------------------------------------------------------[Declarations]----------------------------------------------------------
#Script Version
#$sScriptVersion = "1.0"

#Log File Info
#$sLogPath = "C:\Windows\Temp"
#$sLogName = "<script_name>.log"
#$sLogFile = Join-Path -Path $sLogPath -ChildPath $sLogName


#-----------------------------------------------------------[Functions]------------------------------------------------------------
function AutoPing-IPs
{
    [CmdletBinding(ConfirmImpact="Low",
    HelpURI="https://gallery.technet.microsoft.com/scriptcenter/Powershell-Script-to-ping-15e0610a")]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin{
    Log-Write -LogPath $sLogFile -LineValue "<description of what is going on>..."
    }


    Process{
        Try{
            #Input/Output Files
            $inputFile = "C:\Users\adamnoonan\Documents\Documents\AutoPing\IPAddressList.csv"
            $outFile = "C:\Users\adamnoonan\Documents\Documents\AutoPing\PingResults.txt"

            #Get Input, process Input
            $info = Get-Content $inputFile | foreach{
                If(Test-Connection -ComputerName $_ -Count 1 -Quiet) {
                $status = Write-Output "Active"
                }
                Else{
                $status = Write-Output "Inactive"
                }

            #Create Output Object
        [pscustomobject][ordered]@{
                PCName  = $_
                Status  = $status
                DateTime = Get-Date            
            }
        }

        #Generate/Append Output
        $info | Add-Content $outFile
        }
        Catch{
        }
    }


    End{
        IF($?){
            Log-Write -LogPath $sLogFile -LineValue "Completed Successfully."
            Log-Write -LogPath $sLogFile -LineValue " "
        }
    }
}


#-----------------------------------------------------------[Execution]------------------------------------------------------------
#Log-Start -LogPath $sLogPath -LogName $sLogName -ScriptVersion $sScriptVersion
#Script Execution goes here
#Log-Finish -LogPath $sLogFile

  
    
     
    
            