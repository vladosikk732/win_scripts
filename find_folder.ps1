param (
    [string]$folderName,   # Имя папки, которую ищем
    [string]$searchPath = "C:\"  # Каталог для поиска (по умолчанию - C:\)
)

# Поиск папки
$folders = Get-ChildItem -Path $searchPath -Recurse -Directory -ErrorAction SilentlyContinue | Where-Object { $_.Name -eq $folderName }

# Вывод результата
if ($folders) {
foreach($folder in $folders) {
    Write-Output "Folder is found:`n  $($folder.FullName)"
}
} else {
    Write-Output "Folder '$folderName' is not found in - '$searchPath'"
}