<#
.NOTES
    Version: 1.0
    Author: Adam Noonan
    Last Edit: 9/5/2019
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
------------------------------------------------------------[Change Log]----------------------------------------------------------
    1.0
    -Customized template
#>
#---------------------------------------------------------[Initialisations]--------------------------------------------------------
#Set Error Action to All Errors Terminate
#$ErrorActionPreference = "Stop"
#----------------------------------------------------------[Declarations]----------------------------------------------------------
#Clear-Host
#cls
#-----------------------------------------------------------[Functions]------------------------------------------------------------
function Verb-Noun
{
    [CmdletBinding(
    HelpURI="https://gist.github.com/9to5IT/9620683")]
    [Alias()]
    [OutputType([int])]

    Param
    ()

    Begin{
        Write-Host "Starting Script.."
    }

    Process{
        Try{

        }

        Catch{
            Write-Host "An error has occurred that could not be resolved:"
            Write-Host $_
             }
        }

    End{
        IF($?){
           
        }
    }
}
#-----------------------------------------------------------[Execution]------------------------------------------------------------
#Script Execution goes here

