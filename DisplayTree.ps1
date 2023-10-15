function DisplayTree {
    param (
        [string]$path,
        [string]$indent="",
        [bool]$isRoot=$false
    )

    # Initialize output file with ISO Date-Time prefix
    $currentDateTime = Get-Date -Format "yyyyMMddTHHmmss"
    $outputFile = ".\" + $currentDateTime + "_tree.txt"

    # Display and write the root directory if this is the first call to the function
    if ($isRoot) {
        $rootName = (Get-Item $path).Name
        Write-Host $rootName
        Add-Content -Path $outputFile -Value $rootName
    }

    # Display and write directories
    Get-ChildItem -Directory $path | ForEach-Object {
        $line = "$indent|--- $($_.Name)"
        Write-Host $line
        Add-Content -Path $outputFile -Value $line
        if ($_.Name -ne "node_modules") {
            DisplayTree -path $_.FullName -indent "    $indent"
        }
    }

    # Display and write files
    Get-ChildItem -File $path | ForEach-Object {
        $line = "$indent|--- $($_.Name)"
        Write-Host $line
        Add-Content -Path $outputFile -Value $line
    }
}

# Generate and clear or create the output file with ISO Date-Time prefix
$currentDateTime = Get-Date -Format "yyyyMMddTHHmmss"
$outputFile = ".\" + $currentDateTime + "_tree.txt"
if (Test-Path $outputFile) {
    Clear-Content -Path $outputFile
}

# Run the function to generate the tree and save it to the file
DisplayTree -path ".\" -isRoot $true
