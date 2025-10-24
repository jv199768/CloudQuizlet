function Enter-PSSessionPW {
 
[CmdletBinding()]
 
param (
 
[Parameter(Position=0)]
$ComputerName='localhost'
 
)
 
$password = ConvertTo-SecureString (Unprotect-CmsMessage -Path C:\Temp\pwd.txt) -AsPlainText -Force
$cred= New-Object System.Management.Automation.PSCredential ("sid-500\administrator", $password)
 
Enter-PSSession -ComputerName $ComputerName -Credential $cred
 
}
