$root = "C:\Users\hp\Documents\Diego escuela\rezendizzz"

# Crear carpetas
@("$root","$root\css","$root\js","$root\images") | ForEach-Object {
    if (-not (Test-Path $_)) { New-Item -Path $_ -ItemType Directory -Force | Out-Null }
}

# Definir archivos y contenido
$files = @{
"$root\index.html" = @'
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Inicio - Boda</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/stylenav.css" />
  <link rel="stylesheet" href="css/style.css" />
</head>
<body>
  <nav class="site-nav">
    <div class="nav-inner">
      <div class="nav-left"><a href="index.html"><img src="images/logo.jpg" alt="logo" class="logo"></a></div>
      <ul class="nav-center">
        <li class="nav-item dropdown">
          <a href="mi-boda-agenda.html" class="nav-link">Mi boda</a>
          <ul class="dropdown-menu">
            <li><a href="mi-boda-agenda.html">Agenda</a></li>
            <li><a href="mi-boda-invitados.html">Invitados</a></li>
            <li><a href="mi-boda-mesas.html">Mesas</a></li>
            <li><a href="mi-boda-presupuestador.html">Presupuestador</a></li>
            <li><a href="mi-boda-vestidos.html">Vestidos</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a href="lugares-haciendas.html" class="nav-link">Lugares de boda</a>
          <ul class="dropdown-menu">
            <li><a href="lugares-haciendas.html">Haciendas para bodas</a></li>
            <li><a href="lugares-quintas.html">Quintas para bodas</a></li>
            <li><a href="lugares-hoteles.html">Hoteles para bodas</a></li>
            <li><a href="lugares-restaurantes.html">Restaurantes para bodas</a></li>
            <li><a href="lugares-salones.html">Salones para bodas</a></li>
            <li><a href="lugares-playa.html">Bodas en la playa</a></li>
            <li><a href="lugares-vinedos.html">Viñedos</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a href="proveedores-fotografos.html" class="nav-link">Proveedores</a>
          <ul class="dropdown-menu">
            <li><a href="proveedores-fotografos.html">Fotógrafos de bodas</a></li>
            <li><a href="proveedores-video.html">Video para bodas</a></li>
            <li><a href="proveedores-musica.html">Música para bodas</a></li>
            <li><a href="proveedores-autos.html">Autos para bodas</a></li>
            <li><a href="proveedores-invitaciones.html">Invitaciones de bodas</a></li>
            <li><a href="proveedores-florerias.html">Florerías</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a href="vestidos-novia.html" class="nav-link">Vestidos</a>
          <ul class="dropdown-menu"><li><a href="vestidos-novia.html">Novia</a></li></ul>
        </li>
      </ul>
      <div class="nav-right">
        <a href="login.html" class="auth-link">Accede</a>
        <a href="register.html" class="register-btn">Regístrate</a>
      </div>
    </div>
  </nav>

  <hr class="nav-separator">

  <div class="container mt-4">
    <div id="carouselExample" class="carousel slide">
      <div class="carousel-inner">
        <div class="carousel-item active"><img src="images/slide1.jpg" class="d-block w-100" alt="slide1" width="400" height="250"></div>
        <div class="carousel-item"><img src="images/slide2.jpg" class="d-block w-100" alt="slide2" width="400" height="250"></div>
        <div class="carousel-item"><img src="images/slide3.jpg" class="d-block w-100" alt="slide3" width="400" height="250"></div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span></button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next"><span class="carousel-control-next-icon"></span></button>
    </div>
  </div>

  <section class="container mt-4">
    <h2 class="section-title">Alojamientos populares</h2>
    <div class="cards-grid">
      <div class="card-item"><img src="images/card1.jpg" alt="card1"><h3>Playa Suite</h3><p>$2,700 • ⭐4.9</p></div>
      <div class="card-item"><img src="images/card2.jpg" alt="card2"><h3>Condominio</h3><p>$3,100 • ⭐4.8</p></div>
      <div class="card-item"><img src="images/card3.jpg" alt="card3"><h3>Loft</h3><p>$2,100 • ⭐4.7</p></div>
      <div class="card-item"><img src="images/card4.jpg" alt="card4"><h3>Hacienda</h3><p>$5,200 • ⭐4.9</p></div>
      <div class="card-item"><img src="images/card5.jpg" alt="card5"><h3>Hotel Boutique</h3><p>$3,800 • ⭐4.6</p></div>
      <div class="card-item"><img src="images/card6.jpg" alt="card6"><h3>Quinta</h3><p>$4,000 • ⭐4.8</p></div>
      <div class="card-item"><img src="images/card7.jpg" alt="card7"><h3>Villa</h3><p>$6,000 • ⭐5.0</p></div>
    </div>
  </section>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <script src="js/script.js"></script>
</body>
</html>
'@

"$root\css\stylenav.css" = @'
:root{ --accent:#FF4564; --bg:#ffffff; --text:#111; }
body{ margin:0; font-family: Arial, Helvetica, sans-serif; background:#fafafa; color:var(--text); }

.site-nav{ background:var(--bg); box-shadow:0 2px 8px rgba(0,0,0,0.06); }
.nav-inner{ width:66%; margin:0 auto; display:flex; align-items:center; justify-content:space-between; padding:14px 0; gap:16px; }
.logo{ height:48px; width:auto; object-fit:cover; border-radius:6px; }

.nav-center{ list-style:none; display:flex; gap:18px; margin:0; padding:0; align-items:center; justify-content:center; flex:1; }
.nav-item{ position:relative; }
.nav-link{ text-decoration:none; color:var(--text); font-weight:600; padding:6px 8px; display:inline-block; }
.nav-link:hover{ color:var(--accent); }

.dropdown-menu{ position:absolute; top:calc(100% + 10px); left:0; background:#fff; border-radius:8px; min-width:220px; box-shadow:0 10px 30px rgba(0,0,0,0.08); padding:8px; display:none; z-index:60; }
.dropdown-menu li{ list-style:none; margin:6px 0; }
.dropdown-menu a{ color:#222; text-decoration:none; display:block; padding:6px 8px; border-radius:6px; }
.dropdown-menu a:hover{ background:var(--accent); color:#fff; }

.nav-item:hover > .dropdown-menu{ display:block; }

.nav-right{ display:flex; gap:10px; align-items:center; }
.auth-link{ color:#111; text-decoration:none; font-weight:600; }
.register-btn{ color:var(--accent); border:1px solid var(--accent); padding:6px 10px; border-radius:6px; text-decoration:none; }
.register-btn:hover{ background:var(--accent); color:#fff; }

.nav-separator{ border:0; height:1px; background:linear-gradient(to right, transparent, rgba(0,0,0,0.06), transparent); margin:0; }

@media (max-width:900px){
  .nav-inner{ width:92%; }
  .nav-center{ display:none; }
}
'@

"$root\css\style.css" = @'
body { font-family: Arial, Helvetica, sans-serif; padding: 20px; background:#fff; }
.container{ max-width:1100px; margin:0 auto; padding:0 12px; }

.section-title{ font-size:22px; margin-bottom:15px; }
.cards-grid{ display:grid; gap:14px; grid-template-columns: repeat(auto-fit, minmax(160px, 1fr)); margin-bottom:40px; }
.card-item{ background:#fff; border-radius:8px; padding:8px; box-shadow:0 6px 18px rgba(0,0,0,0.06); text-align:center; }
.card-item img{ width:100%; height:120px; object-fit:cover; border-radius:6px; }

@media (min-width:1400px){ .cards-grid{ grid-template-columns: repeat(7, 1fr); } }

.carousel .d-block{ height:250px; object-fit:cover; }

.cards-container { display: flex; gap: 20px; overflow-x: auto; padding-bottom: 20px; }
.card { min-width: 270px; cursor: pointer; }
.img-box img { width: 100%; height: 180px; object-fit: cover; border-radius: 15px; }
.tag { position: absolute; top: 10px; left: 10px; background: white; padding: 4px 10px; border-radius: 8px; font-size: 12px; font-weight: bold; }
.heart { position: absolute; top: 12px; right: 12px; background: white; border: none; padding: 5px 8px; border-radius: 50%; font-size: 16px; cursor: pointer; }
.title { margin: 8px 0 3px; font-size: 16px; font-weight: bold; }
.price { font-size: 14px; color: #555; }

@media (max-width: 600px) {
    .card { min-width: 200px; }
    .img-box img { height: 150px; }
}
'@

"$root\js\script.js" = @'
document.addEventListener("click", function(e){
  if(e.target.matches(".heart")) {
    e.preventDefault();
    e.target.textContent = e.target.textContent === "♡" ? "♥" : "♡";
  }
});

function goToPage(){
  window.location.href = "pagina-prueba.html";
}

console.log("Script cargado");
'@
}

# Small page template generator
$template = @'
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>{TITLE}</title>
  <link rel="stylesheet" href="css/stylenav.css" />
  <link rel="stylesheet" href="css/style.css" />
</head>
<body>
  <a href="index.html">← Volver</a>
  <main class="container">
    <h1>{HEADING}</h1>
    <p>{TEXT}</p>
  </main>
</body>
</html>
'@

# List of pages
$pages = @{
"mi-boda-agenda.html" = @{TITLE="Mi boda - Agenda"; HEADING="Agenda"; TEXT="Archivo listo para editar: añade aquí tu calendario y tareas."}
"mi-boda-invitados.html" = @{TITLE="Mi boda - Invitados"; HEADING="Invitados"; TEXT="Archivo para gestionar la lista de invitados."}
"mi-boda-mesas.html" = @{TITLE="Mi boda - Mesas"; HEADING="Mesas"; TEXT="Organiza tus mesas y asignaciones."}
"mi-boda-presupuestador.html" = @{TITLE="Mi boda - Presupuestador"; HEADING="Presupuestador"; TEXT="Calculadora y presupuesto (archivo para completar)."}
"mi-boda-vestidos.html" = @{TITLE="Mi boda - Vestidos"; HEADING="Vestidos"; TEXT="Sección de vestidos (archivo editable)."}
"lugares-haciendas.html" = @{TITLE="Haciendas"; HEADING="Haciendas para bodas"; TEXT="Contenido editable."}
"lugares-quintas.html" = @{TITLE="Quintas"; HEADING="Quintas para bodas"; TEXT="Contenido editable."}
"lugares-hoteles.html" = @{TITLE="Hoteles"; HEADING="Hoteles para bodas"; TEXT="Contenido editable."}
"lugares-restaurantes.html" = @{TITLE="Restaurantes"; HEADING="Restaurantes para bodas"; TEXT="Contenido editable."}
"lugares-salones.html" = @{TITLE="Salones"; HEADING="Salones para bodas"; TEXT="Contenido editable."}
"lugares-playa.html" = @{TITLE="Bodas en la playa"; HEADING="Bodas en la playa"; TEXT="Contenido editable."}
"lugares-vinedos.html" = @{TITLE="Viñedos"; HEADING="Viñedos"; TEXT="Contenido editable."}
"proveedores-fotografos.html" = @{TITLE="Fotógrafos"; HEADING="Fotógrafos de bodas"; TEXT="Lista y detalles."}
"proveedores-video.html" = @{TITLE="Video"; HEADING="Video para bodas"; TEXT="Lista y detalles."}
"proveedores-musica.html" = @{TITLE="Música"; HEADING="Música para bodas"; TEXT="Lista y detalles."}
"proveedores-autos.html" = @{TITLE="Autos"; HEADING="Autos para bodas"; TEXT="Lista y detalles."}
"proveedores-invitaciones.html" = @{TITLE="Invitaciones"; HEADING="Invitaciones de boda"; TEXT="Lista y detalles."}
"proveedores-florerias.html" = @{TITLE="Florerías"; HEADING="Florerías"; TEXT="Lista y detalles."}
"vestidos-novia.html" = @{TITLE="Vestidos - Novia"; HEADING="Vestidos - Novia"; TEXT="Galería y detalles (archivo para completar)."}
"login.html" = @{TITLE="Accede"; HEADING="Accede"; TEXT="Formulario de acceso."}
"register.html" = @{TITLE="Registrarse"; HEADING="Registrarse"; TEXT="Formulario de registro."}
"pagina-prueba.html" = @{TITLE="Página prueba"; HEADING="Página de prueba"; TEXT="Página creada para pruebas."}
}

foreach($p in $pages.GetEnumerator()){
    $path = Join-Path $root $p.Key
    $content = $template -replace "{TITLE}", $p.Value.TITLE -replace "{HEADING}", $p.Value.HEADING -replace "{TEXT}", $p.Value.TEXT
    $files[$path] = $content
}

# Write files
foreach($pair in $files.GetEnumerator()){
    $dir = Split-Path $pair.Key -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
    $pair.Value | Out-File -FilePath $pair.Key -Encoding utf8 -Force
    Write-Output "Wrote: $($pair.Key)"
}

# Image placeholders
1..7 | ForEach-Object {
    $img = Join-Path $root ("images\card$_.jpg")
    if (-not (Test-Path $img)) { "" | Out-File -FilePath $img -Encoding utf8 -Force }
}
@("logo.jpg","slide1.jpg","slide2.jpg","slide3.jpg") | ForEach-Object {
    $img = Join-Path $root ("images\" + $_)
    if (-not (Test-Path $img)) { "" | Out-File -FilePath $img -Encoding utf8 -Force }
}

Write-Output "Todos los archivos fueron creados/actualizados en: $root"