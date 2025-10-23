#requires -Version 3
$ErrorActionPreference = 'silentlycontinue'

# Create an empty array to hold values for hash table
$Out = @()

$status = @()

# Get list of names from computer list
$PCs = Import-Csv -Path '\\<Server>\Software\Windows7\Powershell\Deploy\BDE\cn.csv' 
$Computers = $PCs.PC 


# Get today's date and convert it to a string.

$date = (Get-Date).tostring()

$Today = (Get-Date).tostring('dd-mm-yyyy')


# Loop through each computer name line by line...
Foreach ($computer in $Computers) 
{
    #Check Bitlocker status. Calls System32 commandline application from powershell. "Sysnative" automatically determines SysWow64 or System32. 
    # Select "Percentage Encrypted:".
    $status = c:\windows\sysnative\windowspowershell\v1.0\powershell.exe c:\windows\system32\manage-bde.exe -status -cn "$computer" | Select-String -Pattern 'Percentage Encrypted:'


    # Convert result to a string value
    $string = $status[0].ToString()

    # Split the string on the ":" character
    $split = $string.Split(':')

    # Get the value to the right of the ":" character
    $percentage = $split[1].trim() 



    # Create a custom PSObject to hold the output values, we need it because manage-bde doesn't produce standard PS objects with properties. 
    # Add objects members to the PSObject. You could use a hash table instead, see Check-BDEStatus.ps1.

    $obj = New-Object -TypeName PSObject
    $obj | Add-Member -MemberType NoteProperty -Name Date -Value $date
    $obj | Add-Member -MemberType NoteProperty -Name PC -Value $computer
    $obj | Add-Member -MemberType NotePr -SecondValue operty -Name Completed -Value $percentage

    $Out += $obj


    # Print on screen in yellow
    Write-Host "Adding $computer Bitlocker info to CSV file" -ForegroundColor Yellow
}


#Export the object results to a csv file

$Out | Export-Csv -Path '\\<Server>\Software\Windows7\Powershell\Deploy\BDE\Bitlocker_status.csv' -Append -NoTypeInformation
