<%@page import="com.emergentes.gestiondeproductos.Producto"%>
<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("listapro")== null){
    ArrayList<Producto>lisaux = new ArrayList<Producto>();
    session.setAttribute("listapro", lisaux);
    }
   ArrayList<Producto>lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        
        .cuadro {
            border: 2px solid #007BFF; 
            background-color: #F0F8FF; 
            padding: 15px; 
            width: 300px; 
            text-align: center; 
            font-family: Arial, sans-serif;
            font-size: 16px; 
            color: #333; 
        }
    </style>
    </head>
    <body>
     <center>
         <div class="cuadro">
        <p style="font-weight: bold;">SEGUNDO PARCIAL TEM-742</p>
        <p>Nombre: <span style="color: #0851A4;">Rene Huanca Mamani</span></p>
        <p>Carnet: <span style="color: #0851A4;">10921485</span></p>
    </div>
       <h1>Gestor de productos</h1>
    <h1></h1>
    <a href="MainServlet?op=nuevo">Nueva producto</a>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Descripcion</th>
            <th>Cantidad</th>
            <th>Precio</th>     
            <th>Categoria</th>
        </tr>
        <%
            if(lista != null){
            for(Producto item : lista){
         %>
         <tr>
             <td><%= item.getId() %></td>
             <td><%= item.getDescripcion() %></td>
             <td><%= item.getCantidad() %></td>
             <td><%= item.getPrecio() %></td>
             <td><%= item.getCategoria() %></td>
             <td>
                 <a href="MainServlet?op=editar&id=<%=item.getId()%>">Editar</a>
             </td>
             <td>
                 <a href="MainServlet?op=eliminar&id=<%= item.getId() %>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a>
             </td>
            

             
         <%
            }
            }

         %>
         </tr>
       
    </table>
    </center>
    </body>
</html>

