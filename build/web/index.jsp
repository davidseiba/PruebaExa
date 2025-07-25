<%-- 
    Document   : index
    Created on : 7/07/2025, 12:27:06 PM
    Author     : Students
--%>

<%@ include file="conexion.jsp" %>
<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<br>
<div class="container center-align" style="margin-top: 30px;">
  <a href="rGeneral.jsp" class="btn-large waves-effect waves-light blue darken-2">
    Registrar nuevo empleado
    <i class="material-icons right">person_add</i>
  </a>
</div>
<div class="container">
  <div class="card-panel z-depth-2">
    <h5 class="center-align">Lista de Empleados Registrados</h5>
    <table class="striped centered responsive-table highlight">
      <thead class="blue-text text-darken-2">
        <tr>
          <th>ID</th>
          <th>Número</th>
          <th>Nombre</th>
          <th>Puesto</th>
          <th>Días</th>
          <th>Diario</th>
          <th>Total</th>
          <th colspan="2">Acciones</th>
        </tr>
      </thead>
      <tbody>
<%
    PreparedStatement st = conexion.prepareStatement("SELECT * FROM empleados");
    ResultSet rs = st.executeQuery();
    while (rs.next()) {
%>
        <tr>
          <td><%= rs.getInt("id_empleado") %></td>
          <td><%= rs.getString("numero_empleado") %></td>
          <td><%= rs.getString("nombre") %></td>
          <td><%= rs.getString("puesto") %></td>
          <td><%= rs.getInt("dias_trabajados") %></td>
          <td>$<%= rs.getDouble("sueldo_diario") %></td>
          <td>$<%= rs.getDouble("sueldo_total") %></td>
          <td><a href="editarEmpleado.jsp?id_empleado=<%= rs.getInt("id_empleado") %>" class="btn-small blue">Editar</a></td>
          <td><a href="eliminarEmpleado.jsp?id_empleado=<%= rs.getInt("id_empleado") %>" class="btn-small red" onclick="return confirm('¿Eliminar este registro?')">Eliminar</a></td>
        </tr>
        <%
          }
          rs.close();
          st.close();
          conexion.close();
        %>
      </tbody>
    </table>
  </div>
</div>
<jsp:include page="includes/footer.jsp"/>
