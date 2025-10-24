$bytes = [System.Text.Encoding]::UTF8.GetBytes("Hello World")
$hexString = [System.BitConverter]::ToString($bytes)
$hexString = $hexString.Replace("-", "") # Remove hyphens for a continuous string

Write-Host "Byte Array: $($bytes -join ', ')"
Write-Host "Hex String: $hexString"
