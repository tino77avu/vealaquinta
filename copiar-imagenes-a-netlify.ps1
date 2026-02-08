# Copiar imágenes de src/.../static/images a netlify/images
# Ejecutar desde la carpeta ValaQuinta cuando cambies fotos

$src = "d:\Desarrollo\Intellij\Vealaquinta\ValaQuinta\src\main\resources\static\images"
$dst = "d:\Desarrollo\Intellij\Vealaquinta\ValaQuinta\netlify\images"

$imagenes = @(
    @{ Origen = "alfajor1.png"; Destino = "alfajor1.png" },
    @{ Origen = "avellana.png"; Destino = "avellana.png" },
    @{ Origen = "contacto.png"; Destino = "contacto.png" },
    @{ Origen = "Inicio.png"; Destino = "Inicio.png" },
    @{ Origen = "Logo.png"; Destino = "Logo.png" },
    @{ Origen = "manjar.png"; Destino = "manjar.png" },
    @{ Origen = "pistacho.png"; Destino = "pistacho.png" },
    @{ Origen = "precios.png"; Destino = "precios.png" },
    @{ Origen = "sabores.png"; Destino = "sabores.png" },
    @{ Origen = "historia.png"; Destino = "Historia.png" },
    @{ Origen = "resena.png"; Destino = "resena.png" }
)

foreach ($img in $imagenes) {
    $origen = Join-Path $src $img.Origen
    $destino = Join-Path $dst $img.Destino
    if (Test-Path $origen) {
        Copy-Item $origen $destino -Force
        Write-Host "Copiado: $($img.Origen) -> netlify/images/$($img.Destino)"
    }
}

Write-Host "Listo. Imágenes actualizadas en netlify/images/"
