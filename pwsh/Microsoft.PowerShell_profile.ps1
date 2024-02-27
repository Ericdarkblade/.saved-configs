oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression

# Ucomment one line to select a theme
# --config "$env:POSH_THEMES_PATH/atomic.omp.json"
# --config "$env:POSH_THEMES_PATH/M365Princess.omp.json"
# --config "$env:POSH_THEMES_PATH/bubblesextra.omp.json"


# If anyvirus is problematic then, uncomment bottom lines
# & ([ScriptBlock]::Create((oh-my-posh init pwsh --config
# "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" --print) -join "`n"))
#
#
# Themes

# Where Is Function
function whereis ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
  }
# (Symbolic Link)
 function lns ($target, $link) {
    New-Item -Path $link -ItemType SymbolicLink -Value $target
} 
# Hard Link
 function lnh ($target, $link) {
    New-Item -Path $link -ItemType HardLink -Value $target
} 
  
  
#Terminal Icons
Import-Module Terminal-Icons

#PSReadLine
Import-Module PSReadLine
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView



# Shortcut to Courses
$cursem = 'C:\Users\ezmos\OneDrive - Indiana University\My Courses\Spring 2024'
