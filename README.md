# profile-win

Storing some standard profile settings for a windows environment.

# Instructions

## Initial Setup

Setup the terminal and github credentials

1. Go to https://github.com/microsoft/terminal/releases and pick a release to install
2. [Setup Github SSH Key](https://docs.github.com/en/enterprise/2.15/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
3. Run the following commands to run setup (in powershell)

``` powershell
# Install Chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Download Profile Repo
iex (iwr -URI 'https://raw.githubusercontent.com/impguard/profile-win/master/install.ps1')
```

## Run Setup

WIP
