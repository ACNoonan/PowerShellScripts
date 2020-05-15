<#
.NOTES
    Version: 1.0
    Author: Adam Noonan
    Last Edit: 9/6/2019
.SYNOPSIS
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.INPUT
   Inputs into this cmdlet (if any)
.OUTPUT
   Outputs from this cmdlet (if any)

                                                **NOTE**
    -This version of the PowerShell template requires reference to another script ('WriteLog.ps1'),
    also found in '\\s-fs2\it\ApplicationsGroup\Development\PowerShell'.
                                              **END NOTE**

------------------------------------------------------------[Change Log]----------------------------------------------------------
    1.0
    -Customized template
#>
#---------------------------------------------------------[Initializations]--------------------------------------------------------
#Set Error Action to All Errors Terminate
#$ErrorActionPreference = "Stop"

#Reference to Script with required Function Libraries
. "\\s-fs2\it\ApplicationsGroup\Development\PowerShell\WriteLog.ps1"
#----------------------------------------------------------[Declarations]----------------------------------------------------------
#Script Version
#$sScriptVersion = "1.0"

#Log File Info
$sLogPath = "C:\Windows\Temp"
$sLogName = "<script_name>.log"
$sLogFile = Join-Path -Path $sLogPath -ChildPath $sLogName


#-----------------------------------------------------------[Functions]------------------------------------------------------------
function Verb-Noun
{
    [CmdletBinding(ConfirmImpact="Low",
    HelpURI="https://gist.github.com/9to5IT/9620683")]
    [Alias()]
    [OutputType([int])]
    Param
    ()

    Begin{
    Log-Write -LogPath $sLogFile -LineValue "<description of what is going on>..."
    }


    Process{
        Try{
            
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
#Log-Start -LogPath $sLogPath -LogName $sLogName 
#Script Execution goes here
#Log-Finish -LogPath $sLogFile

  
    
     
    
            