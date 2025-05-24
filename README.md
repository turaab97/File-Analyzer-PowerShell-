# File-Analyzer-PowerShell-
A PowerShell script to automate file type detection via magic-number analysis. Perfect for quick file forensics to identify unknown or mislabeled files on Windows.

File Analyzer (PowerShell)

A PowerShell script to automate file type detection via magic-number analysis. Perfect for quick file forensics to identify unknown or mislabeled files on Windows.

Features

Parse and match magic numbers from file headers

Supports common file types: JPEG, PNG, GIF, PDF, ZIP, ELF, and more

Processes single files or entire directories

Human-readable console output with signature details

Prerequisites

PowerShell 5.1+ or PowerShell Core

Execution policy set to allow script execution (Set-ExecutionPolicy RemoteSigned)

Installation

Clone the repo:

git clone https://github.com/turaab97/file-analyzer.git
cd file-analyzer

Make the script executable if needed:

Unblock-File .\FileAnalyzer.ps1

Usage

# Analyze one or more files
dotnet script .\FileAnalyzer.ps1 -Path secret.bin, report.pdf

# Scan all files in a directory
.\FileAnalyzer.ps1 -Path .\Samples\*

Parameters

-Path (Required): File or wildcard pattern to analyze

-Verbose: Display detailed hex output

-Help: Show script usage

Examples

# Single file
PS> .\FileAnalyzer.ps1 -Path secret.bin
secret.bin : PNG image (Signature: 89 50 4E 47)

# Multiple files
PS> .\FileAnalyzer.ps1 -Path *.dat
report.dat : PDF document (Signature: 25 50 44 46)
temp.dat   : Unknown signature (First bytes: D0 CF 11 E0 A1 B1 1A E1)

Contributing

Fork the repo on GitHub

Create a feature branch (git checkout -b feature/YourFeature)

Commit your changes (git commit -m "Add awesome feature")

Push to GitHub (git push origin feature/YourFeature)

Open a Pull Request

License

MIT © Syed Ali Turab

