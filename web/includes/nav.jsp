<%-- 
    Document   : nav
    Created on : 19/04/2025, 05:37:52 PM
    Author     : mata
--%>

<!-- NAVIGATION ---------------------------------------------------------------->
<!-- Importar Materialize en el <head> -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Navbar -->
<nav class="blue-grey darken-4">
  <div class="nav-wrapper container">
    <a href="index.html" class="brand-logo" style="font-family: 'Georgia';">Montage</a>
    <a href="#" data-target="mobile-menu" class="sidenav-trigger"><i class="material-icons">menu</i></a>
    
    <ul class="right hide-on-med-and-down">
      <li><a href="index.html">Inicio</a></li>
      <li><a href="servicios.html">Servicios</a></li>
      <li><a href="nosotros.html">Nosotros</a></li>
      <li><a href="contacto.html">Contacto</a></li>
    </ul>
  </div>
</nav>

<!-- Menú lateral para móviles -->
<ul class="sidenav" id="mobile-menu">
  <li><a href="index.html">Inicio</a></li>
  <li><a href="servicios.html">Servicios</a></li>
  <li><a href="nosotros.html">Nosotros</a></li>
  <li><a href="contacto.html">Contacto</a></li>
</ul>

<!-- Materialize JS para que funcione el menú móvil -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('.sidenav');
    M.Sidenav.init(elems);
  });
</script>

<!-- /NAVIGATION --------------------------------------------------------------->
