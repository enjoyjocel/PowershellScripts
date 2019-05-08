.<#
.SYNOPSIS
    WL (Write-Log)
.DESCRIPTION
    Writes a log file to directory same as the script. Also outputs the entry to the console.
.EXAMPLE
    PS C:\> WL "Connecting to WSUS Server"
    This will output "050719:142801 - Connecting to WSUS Server" in both to a file and in the console. 
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    Usually goes as the first function of your script. 
#>

$SN = $MyInvocation.MyCommand.Name; Function WL($LE) { $LN = (Get-Date -Format "MMddyy:HHmmss") + " - $LE"; $LN | Out-File -FilePath "$PSScriptRoot\$SN-log.txt" -Append -NoClobber -Encoding "Default"; $LN }