<%-- 
    Document   : rUsuario1
    Created on : 11/07/2025, 11:32:34 AM
    Author     : narut
--%>

<br><br><br>
  <!--Formulario alta-->
<%@ include file="conexion.jsp" %>
<%
  String nombreProducto = request.getParameter("nombre_producto");
  String precio = request.getParameter("precio");
  String cantidad = request.getParameter("cantidad");
  String venta = request.getParameter("venta");

  PreparedStatement st = conexion.prepareStatement(
    "INSERT INTO empleados (nombre_producto, precio, cantidad, venta) VALUES (?, ?, ?, ?)"
  );

  st.setString(1, nombreProducto);
  st.setString(2, precio);
  st.setString(3, cantidad);
  st.setString(4, venta);
  st.executeUpdate();

  conexion.close();
  response.sendRedirect("index.jsp");
%>
