# git helpers and prompt styling
# use Install-Module cmdlet to install these if needed
Import-Module posh-git
Import-Module oh-my-posh

# oh-my-posh theme
Set-Theme Agnoster

# editor
Set-Alias -Name "webstorm" -Value "C:\Users\wlycd\AppData\Local\JetBrains\Toolbox\apps\WebStorm\ch-0\202.7660.23\bin\webstorm64.exe"

function Update-Profile { .$profile }
Set-Alias reload Update-Profile
function Edit-Profile { webstorm $profile }
Set-Alias profile Edit-Profile

# Ghostery Browser Extension Yarn
function Invoke-YarnBuildDev { yarn build.dev }
Set-Alias ybd Invoke-YarnBuildDev
function Invoke-YarnLint { yarn lint @args }
Set-Alias yl Invoke-YarnLint
function Invoke-YarnTest { yarn test @args }
Set-Alias yt Invoke-YarnTest

# Git
function Invoke-GitBranch { git branch @args }
Set-Alias gb Invoke-GitBranch
function Invoke-GitCheckout { git checkout @args }
Set-Alias gco Invoke-GitCheckout
function Invoke-GitLogOneline { git log --oneline -10 @args }
Set-Alias glog Invoke-GitLogOneline
function Invoke-GitMergeDryRun { git merge --no-fast-forward --no-commit @args }
Set-Alias gmdr Invoke-GitMergeDryRun
function Invoke-GitStatus { git status }
Set-Alias gs Invoke-GitStatus

# work repo shortcuts
function Set-LocationExtension { Set-Location C:\repos\ghostery-extension }
Set-Alias extension Set-LocationExtension

Write-Host "Profile (re)loaded"
