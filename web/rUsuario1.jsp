<%-- 
    Document   : rUsuario1
    Created on : 11/07/2025, 11:32:34 AM
    Author     : narut
--%>

<br><br><br>
  <!--Formulario alta-->
<%@ include file="conexion.jsp" %>
<%
  String numeroEmpleado = request.getParameter("numero_empleado");
  String nombre = request.getParameter("nombre");
  String puesto = request.getParameter("puesto");
  int diasTrabajados = Integer.parseInt(request.getParameter("dias_trabajados"));
  double sueldoDiario = Double.parseDouble(request.getParameter("sueldo_diario"));
  double sueldoTotal = diasTrabajados * sueldoDiario;

  PreparedStatement st = conexion.prepareStatement(
    "INSERT INTO empleados (numero_empleado, nombre, puesto, dias_trabajados, sueldo_diario, sueldo_total) VALUES (?, ?, ?, ?, ?, ?)"
  );

  st.setString(1, numeroEmpleado);
  st.setString(2, nombre);
  st.setString(3, puesto);
  st.setInt(4, diasTrabajados);
  st.setDouble(5, sueldoDiario);
  st.setDouble(6, sueldoTotal);
  st.executeUpdate();

  conexion.close();
  response.sendRedirect("index.jsp");
%>
