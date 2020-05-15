<#
.NOTES
    Version: 1.0 
    Author: Adam Noonan
    Last Edit: 9/9/2019
.SYNOPSIS
   Test machine access to specific Folder/File locations
.DESCRIPTION
   Takes a list of Folder locations and tests the machines ability to connect to that Folder/File
.EXAMPLE
   Ideally automated via Task Scheduler, output to be analyzed in Tableau
.INPUT
   $inputFile = .csv file of File/Folder locations
.OUTPUT
   $outFile = .txt document of File/Folder locations, Status & DateTime of script operation


------------------------------------------------------------[Change Log]----------------------------------------------------------
    1.0
    -Script creation
    -TODO: Fix w/ "Invoke-Command" and/or "PSCredential Class"
#>
#---------------------------------------------------------[Initializations]--------------------------------------------------------
#Set Error Action to All Errors Stop
#$ErrorActionPreference = "Stop"
#----------------------------------------------------------[Declarations]----------------------------------------------------------
#Clear Screen
cls
#-----------------------------------------------------------[Functions]------------------------------------------------------------
function Test-FilePath
{
    [CmdletBinding(ConfirmImpact="Low",
    HelpURI="https://social.technet.microsoft.com/Forums/ie/en-US/e5f54346-73c3-4ad8-8633-290fd7651774/testpath-of-remote-machines?forum=winserverpowershell")]
    [Alias()]
    [OutputType([int])]
    Param
    (
    )

    Begin{
          #Verbose Setting
          $VerbosePreference = 'Continue'
          #Input/Output Files
          $inputFile = "C:\Users\adamnoonan\Documents\Documents\TestFilePath\B800FileLocations.csv"
          $outFile = "C:\Users\adamnoonan\Documents\Documents\TestFilePath\Test-FilePathResults.txt"
    }

    Process{
        Try{
            #Get Input, process Input
            $info = Get-Content $inputFile | foreach{
                If(Test-Path -Path $_) {
                $status = Write-Output "Active"
                }
                Else{
                $status = Write-Output "Inactive"
            }

            #Create Output Object
            [pscustomobject][ordered]@{
                FilePath  = $_
                Status  = $status
                DateTime = Get-Date            
                                      }
            }

        #Generate/Append Output
        $info | Add-Content $outFile
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
Test-FilePath


  