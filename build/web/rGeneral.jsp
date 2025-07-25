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
      <h4 class="center-align">Registro de Empleado</h4>
      <div class="row">
        <div class="input-field col s12 m6">
          <input id="numero_empleado" name="numero_empleado" type="text" class="validate" required>
          <label for="numero_empleado">Número de Empleado</label>
        </div>
        <div class="input-field col s12 m6">
          <input id="nombre" name="nombre" type="text" class="validate" required>
          <label for="nombre">Nombre</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12 m6">
          <input id="puesto" name="puesto" type="text" class="validate" required>
          <label for="puesto">Puesto</label>
        </div>
        <div class="input-field col s12 m3">
          <input id="dias_trabajados" name="dias_trabajados" type="number" class="validate" required min="0">
          <label for="dias_trabajados">Días Trabajados</label>
        </div>
        <div class="input-field col s12 m3">
          <input id="sueldo_diario" name="sueldo_diario" type="number" class="validate" required step="0.01" min="0">
          <label for="sueldo_diario">Sueldo Diario</label>
        </div>
      </div>
      <div class="row center-align">
        <button type="button" class="btn orange" onclick="calcularSueldo()">Calcular Sueldo Total</button>
      </div>
      <div class="row">
        <div class="input-field col s12 m6 offset-m3">
          <input id="sueldo_total" name="sueldo_total" type="number" step="0.01" readonly required>
          <label for="sueldo_total">Sueldo Total</label>
        </div>
      </div>
      <div class="row center-align">
        <button class="btn waves-effect waves-light blue" type="submit" name="action">Registrar Empleado</button>
      </div>
    </form>
  </div>
</div>
<script>
  function calcularSueldo() {
    const dias = parseFloat(document.getElementById('dias_trabajados').value);
    const sueldo = parseFloat(document.getElementById('sueldo_diario').value);
    if (!isNaN(dias) && !isNaN(sueldo)) {
      const total = dias * sueldo;
      document.getElementById('sueldo_total').value = total.toFixed(2);
      M.updateTextFields();
    } else {
      alert("Ingresa valores válidos en días trabajados y sueldo diario.");
    }
  }
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<jsp:include page="includes/footer.jsp"/>
