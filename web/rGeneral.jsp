<%-- 
    Document   : rGenerar
    Created on : 11/07/2025, 11:19:11 AM
    Author     : narut
--%>

<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<%@include file="conexion.jsp"%>
<br>
<head>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<div class="container">
  <div class="row">
    <form method="post" action="rUsuario1.jsp" class="col s12">
      <h4 class="center-align">Registro de Producto</h4>
      <div class="row">
        <div class="input-field col s12 m6 offset-m3">
          <input id="nombre_producto" name="nombre_producto" type="text" class="validate" required>
          <label for="nombre_producto">Nombre del Producto</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12 m6">
          <input id="precio" name="precio" type="number" class="validate" required step="0.01" min="0">
          <label for="precio">Precio</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="cantidad" name="cantidad" type="number" class="validate" required min="0">
          <label for="cantidad">Cantidad</label>
        </div>
      </div>
      <div class="row center-align">
        <button type="button" class="btn orange" onclick="calcularVenta()">Calcular Venta</button>
      </div>
      <div class="row">
        <div class="input-field col s12 m6 offset-m3">
          <input id="venta" name="venta" type="text" readonly required>
          <label for="venta">Total de Venta</label>
        </div>
      </div>
      <div class="row center-align">
        <button class="btn waves-effect waves-light blue" type="submit" name="action">Registrar Producto</button>
      </div>
    </form>
  </div>
</div>
<script>
  function calcularVenta() {
    const precio = parseFloat(document.getElementById('precio').value);
    const cantidad = parseFloat(document.getElementById('cantidad').value);
    if (!isNaN(precio) && !isNaN(cantidad)) {
      const total = precio * cantidad;
      document.getElementById('venta').value = total.toFixed(2);
      M.updateTextFields();
    } else {
      alert("Ingresa valores válidos en precio y cantidad.");
    }
  }
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<jsp:include page="includes/footer.jsp"/>
