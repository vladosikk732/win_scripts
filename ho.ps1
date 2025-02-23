param (
    [string]$Word   # слово возврощяющее обратно
)

if(-not $Word) {
Write-Host " not found start param"	
exit 1
}
Write-Host " your word: $Word"
