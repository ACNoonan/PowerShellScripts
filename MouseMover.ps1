<#
.NOTES
    Version: 1.0
    Author: Adam Noonan
    Last Edit: 9/5/2019
.Synopsis
   Script to move a mouse every 5 seconds to keep a computer awake (ANDON boards)
.DESCRIPTION
   Script will move the mouse to a specific point (left-middle of screen) initially, and then alter slightly every 5 seconds
------------------------------------------------------------[Change Log]----------------------------------------------------------
    1.0
    -Made to fit template
#>
#---------------------------------------------------------[Initialisations]--------------------------------------------------------
#Set Error Action to All Errors Terminate
#$ErrorActionPreference = "Stop"
#----------------------------------------------------------[Declarations]----------------------------------------------------------
#Clear-Host
cls
#-----------------------------------------------------------[Functions]------------------------------------------------------------
function Mouse-Mover
{
    [CmdletBinding(
    HelpURI="https://gist.github.com/MatthewSteeples/ce7114b4d3488fc49b6a#file-mousemove-ps1")]
    [Alias()]
    [OutputType([int])]

    Param
    ()

    Begin{
        Write-Host "Starting Script.."
    }

    Process{
        Try{
            Add-Type -AssemblyName System.Windows.Forms
	
	            while ($true)
	            {
	             $Pos = [System.Windows.Forms.Cursor]::Position
	             $x = ($pos.X % 500) + 1
	             $y = ($pos.Y % 500) + 1
	             [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
	             Start-Sleep -Seconds 5
                }
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
Mouse-Mover