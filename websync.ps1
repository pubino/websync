# Script to stage, commit, and push all changes to a remote from a local repo on Windows.
#
# Parameters are -Message for a custom commit message and -LocalRepoPath for the folder of the repo.
#
param([string]$Message = "Added website file",
	[System.IO.FileInfo]$LocalRepoPath = "$($HOME)\Downloads\web site"
	)

# Check git installation, install and prompt if necessary.

if ((Get-Command git -ErrorAction SilentlyContinue) -eq $null) {
	winget install -e --silent --accept-source-agreements --accept-package-agreements --id Git.Git
	Read-Host -Prompt "Git is now installed. Re-run via File Explorer or in a new Terminal."
	Exit
}

# Stage, commit, and push.

Push-Location
Set-Location -ErrorAction Stop -LiteralPath $LocalRepoPath
git add .
git commit -m $Message
git push
Pop-Location

Read-Host -Prompt "Press Enter or click the Close button to exit."
