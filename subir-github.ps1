# Script para subir el proyecto a GitHub
# Ejecutar en PowerShell desde la carpeta ValaQuinta (o desde la raíz del proyecto)
# Cierra IntelliJ/Cursor antes de ejecutar si git da error de bloqueo

$projectPath = "d:\Desarrollo\Intellij\Vealaquinta\ValaQuinta"
Set-Location $projectPath

# Quitar bloqueo si existe
if (Test-Path ".git\config.lock") { Remove-Item ".git\config.lock" -Force }

git init
git add .
git commit -m "first commit"
git branch -M main
git remote remove origin 2>$null
git remote add origin git@github.com:tino77avu/vealaquinta.git
git push -u origin main

Write-Host "Listo. Revisa arriba si hubo errores."
