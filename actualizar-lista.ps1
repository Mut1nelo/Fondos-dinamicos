$BaseDir = $PSScriptRoot
$FondosDir = Join-Path $BaseDir "Fondos"
$Salida = Join-Path $BaseDir "playlist.js"

$Extensiones = @(
    ".jpg",
    ".jpeg",
    ".png",
    ".webp",
    ".bmp",
    ".gif",
    ".mp4",
    ".webm",
    ".mkv",
    ".mov",
    ".m4v"
)

Clear-Host

Write-Host "========================================="
Write-Host " Actualizador de playlist"
Write-Host "========================================="
Write-Host ""

Write-Host "Carpeta del script:"
Write-Host $BaseDir -ForegroundColor Cyan
Write-Host ""

Write-Host "Buscando fondos en:"
Write-Host $FondosDir -ForegroundColor Cyan
Write-Host ""

if (-not (Test-Path $FondosDir)) {
    Write-Host "ERROR: No existe la carpeta Fondos." -ForegroundColor Red
    Write-Host ""
    Read-Host "Presiona Enter para cerrar"
    exit
}

$Archivos = @(
    Get-ChildItem -Path $FondosDir -File |
    Where-Object {
        $Extensiones -contains $_.Extension.ToLower()
    } |
    Sort-Object Name |
    Select-Object -ExpandProperty Name
)

Write-Host "Archivos encontrados: $($Archivos.Count)"
Write-Host ""

foreach ($Archivo in $Archivos) {
    Write-Host " - $Archivo"
}

Write-Host ""

if ($Archivos.Count -eq 0) {

    $Contenido = "window.PLAYLIST = [];"

}
else {

    $Json = ConvertTo-Json -InputObject @($Archivos) -Compress

    $Contenido = "window.PLAYLIST = $Json;"
}

# Eliminar la lista anterior
if (Test-Path $Salida) {
    Remove-Item $Salida -Force
}

# Crear playlist.js de nuevo
[System.IO.File]::WriteAllText(
    $Salida,
    $Contenido,
    [System.Text.UTF8Encoding]::new($false)
)

Write-Host ""
Write-Host "playlist.js actualizado correctamente." -ForegroundColor Green
Write-Host ""
Write-Host "Guardado en:"
Write-Host $Salida -ForegroundColor Cyan
Write-Host ""

Read-Host "Presiona Enter para cerrar"