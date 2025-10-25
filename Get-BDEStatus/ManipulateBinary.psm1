$binaryData = Get-Content -Path "C:\path\to\your\binaryfile.bin" -Encoding Byte
$firstByte = $binaryData[0]
$tenthByte = $binaryData[9]
$binaryData[0] = 0xFF
$byteValue = 0b00001111 # Example byte value
$shiftedByte = $byteValue -shl 2 # Shift left by 2 bits
Set-Content -Path "C:\path\to\your\outputfile.bin" -Value $binaryData -Encoding Byte
