# Websync

A simple PowerShell script to stage, commit, and push to a pre-existing repo from Windows File Explorer.

## Prerequisites

* PowerShell script execution enabled via `Set-ExecutionPolicy RemoteSigned`.

## Installation

Download the file `websync.ps1`.  Customize the default value for `$LocalRepoPath`.

## Usage

Either right click the script in File Explorer and click "Run with Powershell" or open a Terminal to the script's working directory and type `.\websync.ps1`.

Optional parameters are `-Message` for a custom commit message and `-LocalRepoPath` for the folder of the repo.

## Details

The script checks to see whether the git command is in the `PATH`.  If not, it installs the package `Git.Git` via [winget](https://learn.microsoft.com/en-us/windows/package-manager/winget) and prompts to re-run the script either from File Explorer or a new Terminal session.

If the `git` command is available, the script just runs through a staging, commit, and push at the `$LocalRepoPath`.
