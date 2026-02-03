# Subir imágenes (y el resto de cambios) a GitHub
# Ejecutar en PowerShell desde la carpeta ValaQuinta

$projectPath = "d:\Desarrollo\Intellij\Vealaquinta\ValaQuinta"
Set-Location $projectPath

Write-Host "Añadiendo todas las imágenes y cambios..."
git add "src/main/resources/static/images/*.png"
git add "netlify/images/*.png"
git add .

$status = git status --short
if (-not $status) {
    Write-Host "No hay cambios que subir (working tree clean)."
    Write-Host "Si cambiaste imágenes, asegúrate de haberlas guardado en:"
    Write-Host "  - src/main/resources/static/images/"
    Write-Host "  - netlify/images/"
    exit 0
}

Write-Host "Cambios detectados:"
git status --short

git commit -m "Actualizar imágenes (y otros cambios)"
git push origin main

Write-Host "Listo. Revisa arriba si hubo errores en el push."
