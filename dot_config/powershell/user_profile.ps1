# Set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Oh-My-Posh
oh-my-posh init pwsh --config 'C:\Users\HJMO-\.config\powershell\squadelho.omp.json' | Invoke-Expression
oh-my-posh init pwsh | Invoke-Expression

# PSReadLine
Set-PsReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# ALIAS
Set-Alias -Name vim -Value Nvim
Set-Alias g git
Set-Alias grep findstr

# PATHS
$ChezPath = "C:\Users\HJMO-\.local\share\chezmoi"
$settings = (Get-Item "C:\users\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")

# FUNCTIONS
function ll {Get-ChildItem}
function la {Get-ChildItem -fo}
if ($host.Name -eq 'ConsoleHost')
{
	function ls_git { & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
    	Set-Alias -Name ls -Value ls_git -Option Private
}
