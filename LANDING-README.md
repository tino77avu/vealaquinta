# Landing Page V⁵ - Ve a la Quinta

## Estructura creada

- **Controlador:** `HomeController.java` - Sirve la página en `/`
- **Plantilla:** `templates/index.html` - HTML con Thymeleaf
- **Estilos:** `static/css/style.css` - Diseño responsive
- **Imágenes:** `static/images/` - Carpeta para tus fotos

## Personalización

### 1. Número de WhatsApp
Edita `application.properties`:
```properties
app.whatsapp.number=51987654321
```
(Reemplaza con tu número real, sin espacios ni guiones)

### 2. Imagen del Hero
Coloca tu foto en: `src/main/resources/static/images/alfajores-caja-hero.jpg`

Si no existe, se mostrará un placeholder automáticamente.

### 3. Enlaces de redes sociales
En `index.html`, sección de contacto, actualiza si cambian:
- Instagram: `https://instagram.com/vealaquinta`
- TikTok: `https://tiktok.com/@ve_a_la_quinta`

## Ejecución

Desde IntelliJ: Run `ValaQuintaApplication`
O con Maven: `./mvnw spring-boot:run`

Abre: http://localhost:8080
