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
    Registrar nuevo producto
    <i class="material-icons right">add_shopping_cart</i>
  </a>
</div>
<div class="container">
  <div class="card-panel z-depth-2">
    <h5 class="center-align">Lista de Productos Registrados</h5>
    <table class="striped centered responsive-table highlight">
      <thead class="blue-text text-darken-2">
        <tr>
          <th>ID</th>
          <th>Nombre del Producto</th>
          <th>Precio</th>
          <th>Cantidad</th>
          <th>Venta</th>
        </tr>
      </thead>
      <tbody>
<%
    PreparedStatement st = conexion.prepareStatement("SELECT * FROM empleados");
    ResultSet rs = st.executeQuery();
    while (rs.next()) {
%>
        <tr>
          <td><%= rs.getString("id_producto") %></td>
          <td><%= rs.getString("nombre_producto") %></td>
          <td>$<%= rs.getString("precio") %></td>
          <td><%= rs.getString("cantidad") %></td>
          <td>$<%= rs.getString("venta") %></td>
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
