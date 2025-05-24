# Define the file signatures and their corresponding file types
$fileSignatures = @{
    "FFD8FF" = "JPEG"
    "89504E47" = "PNG"
    "47494638" = "GIF"
    "25504446" = "PDF"
    "504B0304" = "ZIP"
    "504B030414000600" = "DOCX"
    "4D5A" = "EXE"
    "7F454C46" = "ELF"
    "4D546864" = "MID"
    "526172211A0700" = "RAR"
    "7B5C727466" = "RTF"
    "D0CF11E0A1B11AE1" = "DOC"
    "377ABCAF271C" = "7Z"
}

# Function to read the first 8 bits of a file
function Get-FileSignature {
    param (
        [string]$filePath
    )
    $stream = [System.IO.File]::OpenRead($filePath)
    $bytes = New-Object byte[] 8
    $count = $stream.Read($bytes, 0, 8)
    $stream.Close()
    $stream.Dispose()
    $hexSignature = $bytes | ForEach-Object { $_.ToString("X2") }
    return $hexSignature -join ""
}

# Main script
$filePath = Read-Host "Enter the file path"
$fileSignature = Get-FileSignature -filePath $filePath

# Print the first 8 bits
$first8Bits = $fileSignature.Substring(0, 16)
Write-Output "First 8 bits: $first8Bits"

# Check if the signature matches any known signatures
$fileType = $fileSignatures[$fileSignature]

if ($fileType) {
    Write-Output "File type: $fileType"
} else {
    Write-Output "Unknown file type"
}
