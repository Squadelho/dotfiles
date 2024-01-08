oh-my-posh init pwsh --config 'C:\Users\HJMO-\.config\powershell\squadelho.omp.json' | Invoke-Expression
oh-my-posh init pwsh | Invoke-Expression

if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}
